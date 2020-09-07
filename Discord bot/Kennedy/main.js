
const config = require("./config.json");
const Discord = require("discord.js");
const client = new Discord.Client();

client.on("ready", async () => {
  client.user.setStatus("idle");
  console.log("kathund has started the discord bot!");
  client.user.setPresence({
    game: { name: "To Spotify", type: 3 }
  });
}); //type 1 = playing! type 2 = listening! type 3 = watching! type 4 = streaming

client.on("guildMemberAdd", member => {
  const channel = member.guild.channels.find(ch => ch.id === "welcome");
  if (!channel) return;
  channel.send(
    `Welcome ${user} to **The Kennedy Year 8** Discord Server! We will Set your Name to your nick. Go have fun!`
  );
});

client.on("message", async message => {
  if (!message.guild) return;
  if (message.author.bot) return;
  if (message.content.startsWith(`${config.prefix}find`)) {
    const member = message.mentions.members.first();
    if (!member) return message.channel.send("You must mention someone");
    const embed = new Discord.RichEmbed()
      .setTitle(`${member.user.username}'s information`)
      .setColor("RANDOM")
      
      .addField(`Username is:`, ` ${member.user.username}`)
      .addField(` ID is:`, ` ${member.user.id}`)
      .addField(`Bot:`, ` ${member.user.bot}`)
      .addField(` Status is: `, `${member.user.presence.status}`)
      .addField(`Acc Created at:`, `${member.user.createdAt}`);
    message.channel.send(embed);
  }

//Moderation commands
client.on("message", function(message) {
  const args = message.content.slice(config.prefix.length).split(/ +/);
  const command = args.shift().toLowerCase();
  //Kick
  if (command === "kick") {
    if (!message.member.hasPermission("KICK_MEMBERS"))
      return message.channel.send(" You must have Kick Members permission");
    if (message.member.hasPermission("KICK_MEMBERS")) {
      let reason = args.slice(1).join(" ");
      let user = message.mentions.users.first();
      if (message.mentions.users.size < 1)
        return message
          .reply("You must mention someone to kick them.")
          .catch(console.error);
      if (reason.length < 1)
        return message.reply("You must supply a reason for the kick.");
      message.delete();
      if (!message.guild.member(user).kickable)
        return message.reply("I cannot kick that member");
      message.guild.member(user).kick();

      const embed = new Discord.RichEmbed()
        .setColor("RED")
        .addField("Action:", "kick")
        .addField(
          "User:",
          `${user.username}#${user.discriminator} (${user.id})`
        )
        .addField(
          "Moderator:",
          `${message.author.username}#${message.author.discriminator}`
        )
        .addField("Reason", reason);
      return message.channel.sendEmbed(embed);
    }
  }
  //Ban
  if (command === "ban") {
    if (!message.member.hasPermission("BAN_MEMBERS"))
      return message.channel.send("You must have Ban Members permission");
    if (message.member.hasPermission("BAN_MEMBERS")) {
      let reason = args.slice(1).join(" ");
      let user = message.mentions.users.first();
      if (message.mentions.users.size < 1)
        return message.channel
          .send("You have to mention someone")
          .catch(console.error);
      if (!message.guild.member(user).bannable)
        return message.reply("I cannot ban that member");
      message.guild.ban(user, 2);
      message.delete();

      const embed = new Discord.RichEmbed()
        .setColor("RED")
        .addField("Action:", "Ban")
        .addField(
          "User:",
          `${user.username}#${user.discriminator} (${user.id})`
        )
        .addField(
          "Moderator:",
          `${message.author.username}#${message.author.discriminator}`
        )
        .addField("Reason", reason);
      return message.channel.sendEmbed(embed);
    }
  }
// Mute command
  if (command === "mute") {
    if (message.author.bot) return;
    if (!message.member.hasPermission("MUTE_MEMBERS"))
      return message.reply(" You must have Mute Members permission");
    if (message.member.hasPermission("MUTE_MEMBERS")) {
      let user = message.mentions.users.first();
      let muteRole = client.guilds
        .get(message.guild.id)
        .roles.find("name", "Muted");
      if (!muteRole)
        return message
          .reply(
            "I cannot find a mute role. Please create ***Muted*** role and limit its permissions."
          )
          .catch(console.error);
      if (message.mentions.users.size < 1)
        return message
          .reply("You must mention someone to mute them.")
          .catch(console.error);
      const embed = new Discord.RichEmbed()
        .setColor(0xff0404)
        .addField("Action:", "Mute")
        .addField(
          "User:",
          `${user.username}#${user.discriminator} (${user.id})`
        )
        .addField(
          "Moderator:",
          `${message.author.username}#${message.author.discriminator}`
        );
      if (message.guild.member(user)) {
        message.guild
          .member(user)
          .addRole(muteRole)
          .then(() => {
            message.channel.send(embed).catch(console.error);
          });
        if (message.guild.member(user)) {
          message.guild.member(user).removeRole(addRole);
        }
      }
    }
  }
  //Unmute command!!
  if (command === "unmute") {
    if (message.author.bot) return;
    if (!message.member.hasPermission("MUTE_MEMBERS"))
      return message.reply(" You must have Mute Members permission");
    if (message.member.hasPermission("MUTE_MEMBERS")) {
      let user = message.mentions.users.first();
      let muteRole = client.guilds
        .get(message.guild.id)
        .roles.find("name", "Muted");
      if (!user)
        return message.reply("You must mention someone").catch(console.error);
      const embed = new Discord.RichEmbed()
        .setColor(0xff0404)
        .addField("Action:", "UnMute")
        .addField(
          "User:",
          `${user.username}#${user.discriminator} (${user.id})`
        )
        .addField(
          "Moderator:",
          `${message.author.username}#${message.author.discriminator}`
        );
      if (message.guild.member(user)) {
        message.guild
          .member(user)
          .removeRole(muteRole)
          .then(() => {
            message.channel.send(embed).catch(console.error);
          });
        if (message.guild.member(user)) {
          message.guild.member(user).addRole(addRole);
        }
      }
    }
  }
});
client.login(config.token);
