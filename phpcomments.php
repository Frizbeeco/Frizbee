function array_sort($array, $on, $order = SORT_ASC) {
    $new_array = array();
    $sortable_array = array();

    if (count($array) > 0) {
        foreach($array as $k => $v) {
            if (is_array($v)) {
                foreach($v as $k2 => $v2) {
                    if ($k2 == $on) {
                        $sortable_array[$k] = $v2;
                    }
                }
            } else {
                $sortable_array[$k] = $v;
            }
        }

        switch ($order) {
            case SORT_ASC:
                asort($sortable_array);
                break;
            case SORT_DESC:
                arsort($sortable_array);
                break;
        }

        foreach($sortable_array as $k => $v) {
            $new_array[$k] = $array[$k];
        }
    }

    return $new_array;
}

$posts = array();

$file = file_get_contents("../streams/".$_GET[q].
    ".txt");

$exploded = explode("|", $file);

$num = 0;

foreach($exploded as $content) {

    $exploded2 = explode(",", $content);

    $votes = file_get_contents("../data/".$exploded2[1].
        ".txt");

    $views = file_get_contents("../data/views".$exploded2[1].
        ".txt");

    if (isset($exploded2[1])) {
        $posts[$num] = array(
            'pointss' => $votes,
            'id' => $exploded2[1],
            'headline' => $exploded2[2],
            'subtitle' => $exploded2[3],
            'time' => $exploded2[4],
            'views' => $views,
            'user' => $exploded2[0]
        );
    }

    $num = $num + 1;

}

$finalarray = array_sort($posts, "pointss", SORT_DESC);

$number = 1;

foreach($finalarray as $itemtosort) {

    $adddates = floor((time() - $itemtosort["time"]) / 60);

    if ($adddates < 60) {

        $adddates = floor((time() - $itemtosort["time"]) / 60);

        if ($adddates == "1") {

            $adddates = "1 minute ago";

        } else {

            if ($adddates == "0") {

                $adddates = "just now";

            } else {

                $adddates = "".$adddates.
                " minutes ago";

            }

        }

    } else {

        $adddates = floor((time() - $itemtosort["time"]) / 60);

        if ($addates > 1440) {

            $adddates = floor((time() - $itemtosort["time"]) / 60 / 60 / 24);

            if ($adddates == "1") {

                $adddates = "1 day ago";

            } else {

                $adddates = "".$adddates.
                " days ago";

            }

        } else {

            $adddates = floor((time() - $itemtosort["time"]) / 60 / 60);

            if ($adddates == "1") {

                $adddates = "one hr ago";

            } else {

                $adddates = "".$adddates.
                "hr ago";

            }

        }

    }


    $views = file_get_contents("../data/views".$itemtosort["id"].
        ".txt");

    $readtime = file_get_contents("../data/full".$itemtosort["id"].
        ".txt");

    $explodedtime = explode(" ", $itemtosort["subtitle"]);

    $readtime = floor(intval(count($explodedtime)) / 4);

    if ($readtime < 60) {

        $finaltime = "less than ".$readtime.
        " seconds";

    } else {

        if (floor($readtime / 60) == 1) {

            $finaltime = "less than one minute";

        } else {

            $finaltime = "less than ".floor($readtime / 60).
            " minutes";

        }

    }

    $user = file_get_contents("../data/username".$itemtosort["user"].
        ".txt");

    echo '<div class="cf post"><div style="float:left;margin-left:30px;font-family:Montserrat;color:#5D636C;font-size:14px;-webkit-font-smoothing:antialiased;margin-top:0px;width:100%;word-wrap:break-word;">'.$Parsedown - > text(nl2br($itemtosort["subtitle"])).
    '<div style="font-family:Montserrat;color:#858E9B;font-size:14px;-webkit-font-smoothing:antialiased;margin-top:15px;"> <iframe style="width:90px;height:30px;border:0px;" src="../vote.php?q='.$itemtosort["id"].
    '" scrolling="no"></iframe><span style="margin-left:30px;position:relative;top:-12px;cursor:pointer;">'.$views.
    ' views</span><span style="margin-left:30px;position:relative;top:-15px;cursor:pointer;">'.$adddates.
    '</span><span style="margin-left:30px;position:relative;top:-15px;cursor:pointer;" onclick="user(\''.$user.
    '\');">by @'.$user.
    '</span><div class="playlisttags" style="float:right;position:relative;top:-15px;left:-30px;" onclick="$(\'#post'.$itemtosort['id'].
    '\').toggle();">Respond<i class="fa fa-angle-right" style="position:relative;margin-left:15px;"></i></div></div> </div> </div><script>$("#child'.$itemtosort['id'].
    '").load("/comments/childcomments.php?q='.$itemtosort['id'].
    '");</script>';

    echo '<div class="post" style="display:none;padding-top:30px;padding-bottom:30px;" onclick="document.getElementById(\'writearesponse'.$itemtosort['id'].
    '\').focus();" id="post'.$itemtosort['id'].
    '"> <span class="typcn typcn-message" style="font-size:30px;color:#C8D6D4;"></span> <textarea placeholder="What\'s your response?" style="font-family:Montserrat;color:#858E9B;font-size:14px;-webkit-font-smoothing:antialiased;border:0px;outline:0;width:60%;position:relative;left:30px;overflow:none;resize:none;" id="writearesponse'.$itemtosort['id'].
    '" rows="1" style="overflow:auto" onkeyup="AutoGrowTextArea(this)"> < /textarea> <div class="playlisttags" style="float:right;position:relative;top:-15px;" onclick="full1 = document.getElementById(\'writearesponse'.$itemtosort['id'].'\').value;postid = '.$itemtosort['id'].';document.getElementById(\'hidden\').src=\'https:/ / frizbee.co / comments / post.php ? subtitle = \'+encodeURIComponent(full1)+\'&q=\'+postid+\'\';loadcomments(\'\'+location.hash.slice(1)+\'\');">Post response<i class="fa fa-angle-right" style="position:relative;margin-left:15px;"></i></div> </div><div id="child'.$itemtosort['id'].
    '" style="margin-left:3%;width:97%;"></div>';

    $number = $number + 1;

}
