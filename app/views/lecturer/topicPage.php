<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">

    <!-- Shortcut Icon -->
    <?php shortIcon("logo1.png"); ?>

    <title>ALec</title>

    <?php linkCSS("topic_page") ?>
</head>

<body>

    <?php linkPhp("navigationBarLecturer") ?>

    <div class="topic-container center">
        <h2>SCS2201 Data Structures and Algorithms III</h2>

        <button id="edit-topic" class="add-topic edit-topic" type="button" value="edit-topic">Edit topic</button>
        <button id="exit-edit" class="add-topic exit-edit" type="button" value="exit-edit">Save</button>
        <button class="add-topic" type="button" value="add-topic">Add topic</button>

        <div class="topic">
            <button class="collapsible">
                        <span>
                            <span class="hidden">
                               <i onclick="" class="fa fa-trash" aria-hidden="true"></i>
                                <i onclick="" class="fa fa-pencil" aria-hidden="true"></i>
                            </span>
                            Course Outline
                        </span>
            </button>

            <div class="content">
                <p class="quiz-head">Quizzes</p>
                <ul>
                    <li>
                        <div class="tooltip">
                            <a href="#"><i class="fa fa-pencil-square-o" aria-hidden="true"></i></a>
                            <span class="icon-tooltip">Edit quiz</span>
                        </div>
                                <div class="tooltip">
                                    <a href="#">Quiz 1</a>
                                    <span class="text-tooltip">View quiz</span>
                                </div>
                            </li>
                            <li>
                                <div class="tooltip">
                                    <a href="#"><i class="fa fa-pencil-square-o" aria-hidden="true"></i></a>
                                    <span class="icon-tooltip">Edit quiz</span>
                                </div>
                                <div class="tooltip">
                                    <a href="#">Quiz 2</a>
                                    <span class="text-tooltip">View quiz</span>
                                </div>
                            </li>
                            <li>
                                <div class="tooltip">
                                    <a href="#"><i class="fa fa-pencil-square-o" aria-hidden="true"></i></a>
                                    <span class="icon-tooltip">Edit quiz</span>
                                </div>
                                <div class="tooltip">
                                    <a href="#">Quiz 3</a>
                                    <span class="text-tooltip">View quiz</span>
                                </div>
                            </li>
                </ul>
            </div>
        </div>

        <div class="topic">
            <button class="collapsible">
                        <span>
                            <span id="hidden" class="hidden">
                               <i onclick="" class="fa fa-trash" aria-hidden="true"></i>
                                <i onclick="" class="fa fa-pencil" aria-hidden="true"></i>
                            </span>
                            String Matching
                        </span>
            </button>

            <div class="content">
                <p class="quiz-head">Quizzes</p>
                <ul>
                    <li>
                        <div class="tooltip">
                            <a href="#"><i class="fa fa-pencil-square-o" aria-hidden="true"></i></a>
                            <span class="icon-tooltip">Edit quiz</span>
                        </div>
                                <div class="tooltip">
                                    <a href="#">Quiz 1</a>
                                    <span class="text-tooltip">View quiz</span>
                                </div>
                            </li>
                            <li>
                                <div class="tooltip">
                                    <a href="#"><i class="fa fa-pencil-square-o" aria-hidden="true"></i></a>
                                    <span class="icon-tooltip">Edit quiz</span>
                                </div>
                                <div class="tooltip">
                                    <a href="#">Quiz 2</a>
                                    <span class="text-tooltip">View quiz</span>
                                </div>
                            </li>
                            <li>
                                <div class="tooltip">
                                    <a href="#"><i class="fa fa-pencil-square-o" aria-hidden="true"></i></a>
                                    <span class="icon-tooltip">Edit quiz</span>
                                </div>
                                <div class="tooltip">
                                    <a href="#">Quiz 3</a>
                                    <span class="text-tooltip">View quiz</span>
                                </div>
                            </li>
                </ul>
            </div>
        </div>

        <div class="topic">
            <button class="collapsible">
                        <span>
                            <span id="hidden" class="hidden">
                               <i onclick="" class="fa fa-trash" aria-hidden="true"></i>
                                <i onclick="" class="fa fa-pencil" aria-hidden="true"></i>
                            </span>
                            Linear Programming
                        </span>
            </button>

            <div class="content">
                <p class="quiz-head">Quizzes</p>
                <ul>
                    <li>
                        <div class="tooltip">
                            <a href="#"><i class="fa fa-pencil-square-o" aria-hidden="true"></i></a>
                            <span class="icon-tooltip">Edit quiz</span>
                        </div>
                                <div class="tooltip">
                                    <a href="#">Quiz 1</a>
                                    <span class="text-tooltip">View quiz</span>
                                </div>
                            </li>
                            <li>
                                <div class="tooltip">
                                    <a href="#"><i class="fa fa-pencil-square-o" aria-hidden="true"></i></a>
                                    <span class="icon-tooltip">Edit quiz</span>
                                </div>
                                <div class="tooltip">
                                    <a href="#">Quiz 2</a>
                                    <span class="text-tooltip">View quiz</span>
                                </div>
                            </li>
                            <li>
                                <div class="tooltip">
                                    <a href="#"><i class="fa fa-pencil-square-o" aria-hidden="true"></i></a>
                                    <span class="icon-tooltip">Edit quiz</span>
                                </div>
                                <div class="tooltip">
                                    <a href="#">Quiz 3</a>
                                    <span class="text-tooltip">View quiz</span>
                                </div>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>



    <?php linkPhp("notification"); ?>

    <?php linkPhp("footer"); ?>

    <?php linkJS("topic_page"); ?>

</body>

</html>