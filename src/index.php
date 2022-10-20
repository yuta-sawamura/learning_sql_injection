<?php
function dbConnect()
{
  $dsn = 'mysql:host=172.19.0.2;dbname=app;charset=utf8mb4';
  $user = 'root';
  $password = 'secret';

  try {
    return new PDO($dsn, $user, $password, [PDO::ATTR_ERRMODE => PDO::ERRMODE_EXCEPTION,]);
  } catch (PDOException $e) {
    header('Content-Type: text/plain; charset=UTF-8', true, 500);
    var_dump($e->getMessage());
    exit();
  }
}

function fetchALL()
{
  $sql = "SELECT * FROM tasks JOIN users ON tasks.user_id = users.id";
  $query = dbConnect()->query($sql);

  return $query->fetchAll(PDO::FETCH_ASSOC);
}

$tasks = fetchALL();
?>

<!doctype html>
<html lang="ja">

<head>
  <title>Todo</title>
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
</head>

<body class="bg-light">
  <main class="container">
    <nav class="navbar navbar-expand-lg navbar-light">
      <a class="navbar-brand" href="#">Todo</a>
      <div class=" navbar-collapse">
        <form>
          <input class="form-control" type="text" placeholder="Search">
        </form>
      </div>
    </nav>

    <div class="my-3 p-3 bg-white rounded shadow-sm">
      <p class="border-bottom border-gray pb-2 mb-0">タスク一覧</p>
      <?php foreach ((array)$tasks as $task) : ?>
        <div class="text-muted pt-3">
          <div class="pb-3 mb-0 small lh-125 border-bottom border-gray">
            <strong class="text-gray-dark"><?= $task["content"] ?></strong>
            <span class="d-block"><?= $task["name"] ?></span>
          </div>
        </div>
      <?php endforeach; ?>
    </div>
  </main>
</body>

</html>