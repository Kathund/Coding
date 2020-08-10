
//THis the edits on Jazzy bot by Joker.#4404

const config = require("./config.json");
const Discord = require("discord.js");
const client = new Discord.Client();

client.on("ready", async () => {
  client.user.setStatus("idle");
  console.log("kathund has started the discord bot!");
  client.user.setPresence({
    game: { name: "Kathund update me ", type: 3 }
  });
}); //type 1 = playing! type 2 = listening! type 3 = watching! type 4 = streaming

//Welcome logs
client.on("guildMemberAdd", member => {
  const channel = member.guild.channels.find(ch => ch.name === "welcome");
  if (!channel) return;
  channel.send(
    `Welcome to the JaZziest discord server, ${member}! Go into #rules to get into the discord server.`
  );
});

//647254340708466688

//avatar
client.on("message", async message => {
  if (!message.guild) return;
  if (message.author.bot) return;
  if (message.content.startsWith(`${config.prefix}avatar`)) {
    const user = message.mentions.users.first() || message.author;
    message.channel.send(
      new Discord.RichEmbed()
        .setColor("RANDOM")
        .setAuthor(user.username)
        .setImage(user.avatarURL)
    );
  }
  if (message.content.startsWith(`${config.prefix}who`)) {
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
  if (message.content === `${config.prefix}help`) {
    const embed = new Discord.RichEmbed()
      .setTitle(`Commands are...`)
      .setColor("RANDOM")
      .addField(`Jazzy Bot:`, `Use "$help jazzy" to find the commands/info about the Jazzy Bot.`)
      .addField(`Rythm Bot:`, `Use "$help rythm" to find the commands/info about the Rythm Bot`)
      .addField(`Rank Bot:`,  `Use "$help rank" to find the commands/info about the Rank Bot`)
    message.channel.send(embed);
  }
  if (message.content === '${config.prefix}info') {
    const embed = new Discord.RichEmbed()
      .setTitle('Info')
      .setColor("RANDOM")
      .addField('Ping', 'Your ping is ${client.ping}ms!')
   message.channel.send(embed);
  }
  if (message.content === `${config.prefix}help jazzy`) {
    const embed = new Discord.RichEmbed()
      .setTitle(`Commands For The Jazzy Bot are...`)
    message.channel.send(embed);
  }
  if (message.content === `${config.prefix}help rythm`) {
    const embed = new Discord.RichEmbed()
      .setTitle(`Commands For The Rythm Bot are...`)
    message.channel.send(embed);
  }
  if (message.content === `${config.prefix}help rank`) {
    const embed = new Discord.RichEmbed()
      .setTitle(`Commands For The Rank Bot are...`)
    message.channel.send(embed);
  }
  if (message.content === `${config.prefix}colour list`) {
    const embed = new Discord.RichEmbed()
      .setTitle(`Colours are...`)
      .setColor("RANDOM")
      .addField(`reset`, `Use $colour reset to reset your colour!`)
      .addField(`BLUE`, `Blue is one of the colours that are set`)
      .addField(`RED`, `Red is one of the colours that are set`)
      .addField(`AQUA`, `Aqua is one of the colours that are set`)
      .addField(`YELLOW`, `Yellow is one of the colours that are set`)
      .addField(`PURPLE`, `Purple is one of the colours that are set`)
      .addField(`PINK`, `Pink is one of the colours that are set`)
      .addField(`ORANGE`, `Orange  is one of the colours that are set`)
      .addField(`LIGHT BLUE`, `Light Blue  is one of the colours that are set`);
    message.channel.send(embed);
  }
  if (message.content === `${config.prefix}pants`) {
    const embed = new Discord.RichEmbed()
      .setTitle(`Pants are...`)
      .setColor("RANDOM")
      .addField(`Base`, `<:Base:711078407911374879>`)
      .addField(`3 Months`, `<:3m:711078440929067132>`)
      .addField(`6 Months`, `<:6m:711078476542771221>`)
      .addField(`9 Months`, `<:9m:711078500064297020>`)
      .addField(`1 Year`, `<:1y:711078513930665988>`)
    message.channel.send(embed);
  }
  if (message.content === `${config.prefix}ping`) {
    message.reply(`Your ping is ${client.ping}ms!`);
  } else if (message.content === `${config.prefix}version`) {
    message.channel.send("The Jazzy  Bot is on Version 11.2.9 Beta.");
  } else if (message.content === `${config.prefix}schedule`) {
    message.channel.send(
      "Jasper JaZzY Pants streams every weekday (Monday to Friday) at 3:30pm nzst (10:30pm est the day before)"
    );
  } else if (message.content === `${config.prefix}author`) {
    message.channel.send(
      `Made By Kathund#1000\nIn association with Joker.#8925`
    );
  } else if (message.content === `${config.prefix}verify`) {
    message.member.addRole("666269733146066966");
    message.member.addRole("690127723234066436");
    message.delete();
  } else if (message.content === `bread`) {
    message.channel.send(
      `<:Bread_stick_1:690845957096603749><:Bread_stick_2:690845957847384084><:Bread_stick_3:690845957700714508>`
    );
  } else if (message.content === `BREAD`) {
    message.channel.send(
      `<:Bread_stick_1:690845957096603749><:Bread_stick_2:690845957847384084><:Bread_stick_3:690845957700714508>`
    );
  } else if (message.content === `Bread`) {
    message.channel.send(
      `<:Bread_stick_1:690845957096603749><:Bread_stick_2:690845957847384084><:Bread_stick_3:690845957700714508>`
    );
  } else if (message.content === `pog`) {
    message.channel.send(`<:Pog:611474183473332245>`);
  } else if (message.content === `jasper`) {
    message.channel.send(`<:Head:658204859564294146>`);
  } else if (message.content === `envy`) {
    message.channel.send(`<:JINX:635311074689679370>`);
  } else if (message.content === `rosie`) {
    message.channel.send(`<:Rosie:619485451874598912>`);
  } else if (message.content === `${config.prefix}colour`) {
    message.channel.send(
      `Try using the colour command with a colour. if you want all the colours use $colour list`
    );
  } else if (message.content === `${config.prefix}colour reset`) {
    message.member.removeRole(`694088221638000681`);
    message.member.removeRole(`694089893001035816`);
    message.member.removeRole(`694088216810094632`);
    message.member.removeRole(`694088211323945012`);
    message.member.removeRole(`694088216017502278`);
    message.member.removeRole(`694088216017502278`);
    message.member.removeRole(`694088219503099924`);
    message.member.removeRole(`694088218659913798`);
    message.member.removeRole(`703143821008961607`);
    message.channel.send(`Your colour has been reset`);
  } else if (message.content === `${config.prefix}colour blue`) {
    message.channel.send(
      `Your name is Blue now! (if the command dose not work now do $colour reset and try again)`
    );
    message.member.addRole(`694088221638000681`);
  } else if (message.content === `${config.prefix}colour red`) {
    message.channel.send(
      `Your name is Red now! (if the command dose not work now do $colour reset and try again)`
    );
    message.member.addRole(`694089893001035816`);
  } else if (message.content === `${config.prefix}colour aqua`) {
    message.channel.send(
      `Your name is Aqua now! (if the command dose not work now do $colour reset and try again)`
    );
    message.member.addRole(`694088216810094632`);
  } else if (message.content === `${config.prefix}colour green`) {
    message.channel.send(
      `Your name is Green now! (if the command dose not work now do $colour reset and try again)`
    );
    message.member.addRole(`694088211323945012`);
  } else if (message.content === `${config.prefix}colour yellow`) {
    message.channel.send(
      `Your name is Yellow now! (if the command dose not work now do $colour reset and try again)`
    );
    message.member.addRole(`694088216017502278`);
  } else if (message.content === `${config.prefix}colour orange`) {
    message.channel.send(
      `Your name is Orange new! (if the command dose not work now do $colour reset and try again)`
    );
    message.member.addRole(`694088216017502278`);
  } else if (message.content === `${config.prefix}colour light blue`) {
    message.channel.send(
      `Your name is Light Blue now! (if the command dose not work now do $colour reset and try again)`
    );
    message.member.addRole(`703143821008961607`);
  } else if (message.content === `${config.prefix}colour pink`) {
    message.channel.send(
      `Your name is Pink now! (if the command dose not work now do $colour reset and try again)`
    );
    message.member.addRole(`694088219503099924`);
  } else if (message.content === `${config.prefix}colour purple`) {
    message.channel.send(
      `Your name is Purple now! (if the command dose not work now do $colour reset and try again)`
    );
    message.member.addRole(`694088218659913798`);
  } else if (message.content === `${config.prefix}gfx`) {
    message.channel.send(
      `This link has all the Jazzy GFX.\nhttp://bit.ly/JaZzYGFX`
    );
  } else if (message.content === `${config.prefix}links`) {
    message.channel.send(
      `Twitch = https://bit.ly/2SgZFf8\nInstagram = https://bit.ly/2reNmEZ\nYoutube = https://bit.ly/2Z9kqL4`
    );
  }
});
//MOderation commands
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
  if (command === "mute") {
    if (message.author.bot) return;
    if (!message.member.hasPermission("MUTE_MEMBERS"))
      return message.reply(" You must have Mute Members permission");
    if (message.member.hasPermission("MUTE_MEMBERS")) {
      let user = message.mentions.users.first();
      let muteRole = client.guilds
        .get(message.guild.id)
        .roles.find("name", "Muted");
      let addRole = client.guilds
        .get(message.guild.id)
        .roles.find("name", "Talk");
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
      let addRole = client.guilds
        .get(message.guild.id)
        .roles.find("name", "Talk");
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
