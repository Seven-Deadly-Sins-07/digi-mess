const discord = require('discord.js');  //Works like a header file (for including all the functions)

const config = require('./config/config.json');

const discordclient = new discord.Client();
const keepAlive = require("./server")
const fetch = require('node-fetch');


const talk = [
  'Hello there',                       //for other peeps
  'Keep Talking!',
  'There you are!',
  'Lucky to have you here',
  'You make my day, don\'t you?',
  'I\'m listenning'

];
const talk2 = [
  'Hello Darling!!',                  //for me
  'Glad you are back!',
  'Just want to keep listenning to you..',
  'Everday seems like Valentine\'s Day',
  'You know I\'m not real,right??',
  'Noice to see you!! ;)'

];

discordclient.on('ready',()=>{
    console.log(`${discordclient.user.tag} has logged in...`);
});

discordclient.on('message',function(message){
    console.log(message.content + " was sent by " + message.author.username );
});


// let x=0;
discordclient.on('message',async function(message){
if( (message.channel.id == '856418406982221894') || (message.channel.id == '856199547817820162')  || (message.channel.id=='856900536975753226')||(message.channel.id=='857159365407932436')){
    // while(x===0){
    // message.reply(message.content);
    // x++;
    // }
    // x=0;

    if(message.author.bot)
    {
      return;
    }
    else if(message.channel.id=='856900536975753226')
    {
      let url = `https://g.tenor.com/v1/search?q=${message.content}&key=${process.env.TENORKEY}&limit=8`;
    
    let response2 = await fetch(url);
    let json = await response2.json();
    console.log(json);
    const index = Math.floor(Math.random()*talk.length);
    message.channel.send(json.results[index].url); 
    }
    else if(message.channel.id=='857159365407932436')
    {
    message.channel.send(`https://www.youtube.com/${message.content}`); 
    }
    else if(message.content === '!study'){
      let url = `https://g.tenor.com/v1/search?q=study&key=${process.env.TENORKEY}&limit=20`;
      
      let response2 = await fetch(url);
      let json = await response2.json();
      console.log(json);
      const index = Math.floor(Math.random()*talk.length);
      message.channel.send(json.results[index].url);
      }

     else if( (message.content === 'Hii') || (message.content === 'Helloo')){
      if((message.author.username==='Prototype'))
      {
      const index = Math.floor(Math.random()*talk.length); //For the generation of a random no. as math random choose no. between 0 and 1 and math floor takes the integer part
      message.reply(talk2[index]);
      }
      else
      {
      const index = Math.floor(Math.random()*talk.length); //For the generation of a random no. as math random choose no. between 0 and 1 and math floor takes the integer part
      message.reply(talk[index]);
      }
    }
    else if (message.content === 'XD') {
      // Send "pong" to the same channel
      message.react('😆')
  .then(console.log)
  .catch(console.error);
    }
      else if(message.content === 'LOL'){
    message.react('😂')
  .then(console.log)
  .catch(console.error);
    }
    else if(message.content === 'ROFL'){
    message.react('🤣')
  .then(console.log)
  .catch(console.error);
    }
      else if(message.content === 'What\'s your secret Dnyan?'){
    let url = `https://g.tenor.com/v1/search?q=I'm-always-angry&key=${process.env.TENORKEY}&limit=8`;
    
    let response2 = await fetch(url);
    let json = await response2.json();
    console.log(json);
    message.channel.send(json.results[0].url);
    }
    else if(message.content === 'OP'){
      if(message.author.username==='˞˞˞˞˞˞˞˞˞˞˞˞˞˞˞˞'){
        // if(message.author.username==='Prototype'){
    message.react('🤯')
  .then(console.log)
  .catch(console.error);}
      else{
        message.reply('Stay away from Daulatrao!');
      }
    }

    else {
    message.react('😍')
  .then(console.log)
  .catch(console.error);
    }
    
}
});


discordclient.on('message', message => {
    // If the message is "ping"
    if (message.content === 'ping') {
      // Send "pong" to the same channel
      message.reply('pong');
    }
     if (message.content === '.') {
      // Send "pong" to the same channel
      message.reply('Chup baith Chu****!!');
    }
  });
  discordclient.on('message', message => {
    // If the message is "what is my avatar"
    if (message.content === 'what is my avatar') {
      // Send the user's avatar URL
      message.reply(message.author.displayAvatarURL());
    }
  });

  keepAlive()
discordclient.login(config.DISCORD_BOT.TOKEN);