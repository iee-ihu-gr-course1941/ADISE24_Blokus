<?php
function show_board() {
    global $mysqli;

    $sql = 'SELECT * FROM board';
    $st = $mysqli->prepare($sql);

    if ($st === false) {
        die('MySQL prepare error: ' . $mysqli->error);
    }

    $st->execute();
    $res = $st->get_result();

    if (!$res) {
        die('Error executing query: ' . $mysqli->error);
    }

    header('Content-type: application/json');
    echo json_encode($res->fetch_all(MYSQLI_ASSOC), JSON_PRETTY_PRINT);
}


function reset_board() {
           global $mysqli;
         
           $sql = 'call clean_board()';
           $mysqli -> query($sql);
           show_board();
}
?>