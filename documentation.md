# Host a decentralized external playlist server

Frizbee uses a minimal system of parsing XML files for its playlists. There should be two elements to your interface:

1. a posting interface which securely gathered it's information through POST, including proper XSS-prevention
2. a formatted XML of where the data was stored and can be retrieved

Here is the formatting of the XML file:

    <post>
        <token>computer pillow waterbottle mac</token>
        <postid>7f6c8dc83d77134b</postid>
        <title>Today was a fantastic day... </title>
        <subtitle>I had many an adeventure!</subtitle>
        <full>(paragraph)</full>
        <unixtime>1432342322</unixtime>
    </post>
    <post>
        <token>earth button toned up</token>
        <postid>1e6c9fj83d31881v</postid>
        <title>Today was a fantastic day... </title>
        <subtitle>I had many an adeventure!</subtitle>
        <full>(paragraph)</full>
        <unixtime>1432342380</unixtime>
    </post>
    
Each post is wrapped by a `<post>` tag, with the folowing: `<token>` representing the user's user token (ask the user from the posting form for it, and direct them to our FAQ page to find it), `<postid>` being a UUID that the posting form should have generated on the fly, `<title>`, `<subtitle>`, and `<full>` (the full body of the post) being user-submitted information from the form, and `<unixtime>` representing the unix timestamp as of the time of the submission.
  
Make sure NOT to wrap the whole .xml file within a larger tag. Even if it is not syntactically correect, our interface automatically parses it.

The posting files store the post information, and our server merely stores the vote tallies and comments (as a method of preventing astrosurfing).

Here is a sample posting form in PHP that a decentralized server could implement one similar to:

    <?php
    
    $xml = "posting.xml";
    
    $token = htmlentities($_POST[token]);
    
    $postid = mcrypt_create_iv(20, MCRYPT_DEV_RANDOM);;
    
    $title = htmlentities($_POST[title]);
    
    $subtitle = htmlentities($_POST[subtitle]);
    
    $full = htmlentities($_POST[full]);
    
    $unixtime = time();
    
    if(strlen($full > 10) && strlen($subtitle > 10) && strlen($title > 10){ 
    
    $contents = "<post> <token>".$token."</token> <postid>".$postid."</postid> <title>".$title."</title> <subtitle>".$subtitle."</subtitle> <full>".$full."</full> <unixtime>".$unixtime."</unixtime> </post>";
    
    $myfile = file_put_contents($contents, $xml.PHP_EOL , FILE_APPEND);
    
    }
    
    ?>

If you have any further questions, shoot an email our way at servers@frizbee.co.
