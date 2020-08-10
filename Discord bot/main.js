const Discord = require('discord.js');
const config = require("./config.json");
const client = new Discord.Client();



client.once('ready', () => {
  console.log(`kathund has started the discord bot!\nLogged in as ${client.user.tag}!\nRunning version ${config.version}`);
  client.user.setPresence({ activity: { name: ' with friends' }, status: 'idle' })
});


//welcome logs
client.on('guildMemberAdd', member => {
    const channel = member.guild.channels.cache.find(ch => ch.name === 'member-log');
    if (!channel) return;
    channel.send(`Welcome to the JaZziest discord server, **${member}** Have fun!`);
  });

client.on('message', msg => {
    if (msg.content === 'ping') {
      msg.channel.send('pong');
    }else if (msg.content === 'test') {
        msg.reply('was testing')
    }
  });


  client.login(config.token);
