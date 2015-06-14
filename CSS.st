*, *:before, *:after {
-webkit-apperance: none;
}
body{
overflow-x:hidden;
-webkit-font-smoothing:antialiased;
}
.manifesto{
padding:15px;padding-left:30px;padding-right:30px;font-family:'Montserrat';color:#FFFFFF;font-size:14px;background-color:#e5a422;margin-top:30px;float:left;box-shadow:0px 15px 30px -15px #C8D6D4;cursor:pointer;-transition:all 0.3s;transition:all 0.3s;-transition:all 0.3s;transition:all 0.3s;
}
.manifesto:hover{
background-color:#333333;
color:#FFFFFF;
}
.postabyte{
font-family:'Montserrat';font-size:14px;color:#e5a422;float:right;padding:9px;padding-left:18px;padding-right:18px;box-shadow:inset 0px 0px 0px 1px #e5a422;position:relative;top:-4px;cursor:pointer;-transition:all 0.3s;transition:all 0.3s;-transition:all 0.3s;transition:all 0.3s;border-radius:30px;
}
.postabyte:hover{
background-color:#e5a422;
color:#FFFFFF;
box-shadow:0px 15px 30px -15px #C8D6D4;
}
.header{
position:absolute;top:0px;left:0px;width:100%;-touch-callout:none;cursor:default;
}
.header>.content{
padding-left:120px;padding-right:120px;padding-top:60px;
}
.header>.content>.logo{
height:30px;width:30px;box-shadow:0px 0px 0px 2px #e5a422;float:left;position:relative;border-radius:100%;cursor:pointer;
}
.header>.content>.logo>.one{
position:absolute;top:10px;left:5px;width:10px;height:10px;background-color:#e5a422;border-radius:100%;
}
.header>.content>.logo>.two{
position:absolute;top:12px;left:12px;width:6px;height:6px;background-color:#e5a422;border-radius:100%;
}
.header>.content>.logo>.three{
position:absolute;top:10px;left:15px;width:10px;height:10px;background-color:#e5a422;border-radius:100%;
}
.header>.content>.title{
font-family:'Vollkorn';font-size:16px;letter-spacing:1px;color:#e5a422;float:left;margin-left:30px;padding-top:4px;cursor:pointer;
}
.header>.content>.search{
font-family:'Montserrat';font-size:16px;color:#e5a422;float:right;margin-right:15px;padding:9px;position:relative;top:-4px;cursor:pointer;
}
.header>.content>.notifications{
font-family:'Montserrat';font-size:20px;color:#e5a422;float:right;margin-right:30px;padding:9px;position:relative;top:-8px;cursor:pointer;
}
.calltoaction{
position:absolute;top:150px;left:0px;width:100%;cursor:default;
}
.calltoaction>.header{
padding-left:120px;padding-right:120px;
}
.calltoaction>.header>.big{
font-family:'Vollkorn';color:#333333;font-size:34px;
}
.calltoaction>.header>.small{
font-family:'Montserrat';color:#e5a422;font-size:16px;margin-top:15px;
}
.contentsection{
position:absolute;top:350px;left:0px;width:100%;
}
.contentsection>.section{
padding-left:120px;padding-right:120px;padding-top:60px;
}
.contentsection>.section>.sidebar{
width:300px;border-left:1px solid #eef2f4;position:absolute;top:60px;right:120px;-touch-callout:none;cursor:default;text-align:center;padding-bottom:30px;
}
.contentsection>.section>.selection{
font-family:'Montserrat';color:#AFB7BF;font-size:14px;cursor:default;margin-top:15px;
}

#stream{
margin-top:60px;
min-height:900px;
}


.cloudsettings{
position:absolute;top:100px;right:120px;width:300px;height:450px;border:0px;box-shadow: 0px 0px 30px #C8D6D4;z-index:6;transition:all 0.3s;background-color:#f7f8fa;
}

#stretch{
position:absolute;top:55px;right:160px;height:36px;width:36px;background-color:#e5a422;border-radius:100%;z-index:9;opacity:0.3;-transition:all 0.6s;transition:all 0.6s;-transition:all 0.6s;transition:all 0.6s;display:none;
}

.stretch{
position:fixed;top:0px;right:0px;width:0px;height:0px;z-index:9;
}


@media screen and (max-width: 1200px) {
.header>.content>.title{
display:none;
}

.header>.content{
padding-left:30px;
padding-right:30px;
}

.calltoaction{
   transform:scale(0.8);margin-left:-60px;
}

.contentsection>.section>.sidebar{
display:none;
}

.contentsection>.section{
padding-left:30px;
padding-right:30px;
}

.cloudsettings{
border-radius: 0.1px;
right:0px;

}

.stretch{
transform:scale(0.4);
z-index:9;
right:-60px;
}
}

.playlisttags{

background-color:#FFFFFF;padding:9px;padding-left:15px;padding-right:15px;box-shadow:inset 0px 0px 0px 1px #eef2f4;font-family:'Montserrat';color:#AFB7BF;font-size:13px;-webkit-font-smoothing:antialiased;text-align:left;float:left;margin-top:15px;margin-left:15px;cursor:pointer;

}

.playlisttags:hover{

box-shadow:inset 0px 0px 0px 1px #C8D6D4;

}


@-keyframes shake {
    0% {
        -transform:scale(0);opacity:0;
    }
    25% {
        -transform:scale(1.3);opacity:1;
    }
    50% {
        -transform:scale(0.7);opacity:1;
    }
    75% {
        -transform:scale(2);opacity:1;
    }
    100% {
        -transform:scale(1);opacity:1;-transform:rotate(45deg);
    }
}

@-keyframes fadein {
    0% {
       -transform:scale(0); opacity:0;
    }
    25% {
        -transform:scale(1.1);
    }
    50% {
        -transform:scale(0.9);
    }
    75% {
        -transform:scale(1.1);
    }
    100% {
        -transform:scale(1);opacity:1;
    }
}


@keyframes shake {
    0% {
        transform:scale(0);opacity:0;
    }
    25% {
        transform:scale(1.3);opacity:1;
    }
    50% {
        transform:scale(0.7);opacity:1;
    }
    75% {
        transform:scale(2);opacity:1;
    }
    100% {
        transform:scale(1);opacity:1;transform:rotate(45deg);
    }
}

@keyframes fadein {
    0% {
       transform:scale(0);opacity:0;
    }
    25% {
        transform:scale(1.1);
    }
    50% {
        transform:scale(0.9);
    }
    75% {
        transform:scale(1.1);
    }
    100% {
        transform:scale(1);opacity:1;
    }
}

@keyframes shake {
    0% {
        transform:scale(0);opacity:0;
    }
    25% {
        transform:scale(1.3);opacity:1;
    }
    50% {
        transform:scale(0.7);opacity:1;
    }
    75% {
        transform:scale(2);opacity:1;
    }
    100% {
        transform:scale(1);opacity:1;transform:rotate(45deg);
    }
}

@keyframes fadein {
    0% {
       transform:scale(0);opacity:0;
    }
    25% {
        transform:scale(1.1);
    }
    50% {
        transform:scale(0.9);
    }
    75% {
        transform:scale(1.1);
    }
    100% {
        transform:scale(1);opacity:1;
    }
}
.nav{
float:left;width:8px;height:8px;border-radius:100%;background-color:#C8D6D4;margin-left:15px;position:relative;top:10px;-transition:all 0.3s;transition:all 0.3s;-transition:all 0.3s;transition:all 0.3s;cursor:pointer;
}
.nav:hover{
transform:scale(2);
background-color:#e5a422;
}
