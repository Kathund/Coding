
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

client.login(config.token);
