
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

client.login(config.token);
