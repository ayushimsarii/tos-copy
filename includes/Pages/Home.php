<?php
header("HTTP/1.0 404 Not Found");
include '../../includes/config.php';
include ROOT_PATH . 'includes/connect.php';
// session_start();
// $_SESSION['page'] = 'grade sheet';
// $phase = "";
// $role = "admin"; // or "instructor"

// Determine which class to use based on the role

?>

<!DOCTYPE html>
<html>

<head>
  <title>Home page</title>
  <meta charset="utf-8" />
  <meta name="viewport" content="width=device-width,
                   initial-scale=1" />
  <?php include 'gs_thumbnail.php'; ?>

</head>

<style type="text/css">
  /**/
  .instructor-style {
    width: 50% !important;
    position: absolute;
    margin-left: 815px;
  }

  .admin-style {
    justify-content: center;
    display: flex;
    width: 100% !important;
    color: red;
    /* Add your admin styles here */
  }

  .card-subtitle {
    font-size: 1.1rem !important;
  }

  .tooltip-text {
    visibility: hidden;
    position: absolute;
    top: -40px;
    left: 10px;
    z-index: 2;
    width: auto;
    color: white;
    font-size: 12px;
    background-color: #192733;
    border-radius: 10px;
    padding: 10px 15px 10px 15px;
  }

  .circleig1 {
    height: 20px;
    width: 100%;
    position: absolute;
    display: inline-block;
    left: 0px;
    bottom: -18px;
    border-radius: 2px;
    /*    font-weight: bolder;*/
    /*    font-size: larger;*/
    color: white;
    font-family: cursive;
    background: darkcyan;
  }

  .tooltip-text::before {
    content: "";
    position: absolute;
    transform: rotate(45deg);
    background-color: #192733;
    padding: 5px;
    z-index: 1;
    top: 29px;
    left: 35px;
  }

  .btnFlip:hover .tooltip-text {
    visibility: visible;
  }

  .tooltip-text1 {
    visibility: hidden;
    position: absolute;
    top: -42px;
    left: 0px;
    z-index: 2;
    width: auto;
    color: white;
    font-size: 12px;
    background-color: #192733;
    border-radius: 10px;
    padding: 10px 15px 10px 15px;
  }

  .tooltip-text1::before {
    content: "";
    position: absolute;
    transform: rotate(45deg);
    background-color: #192733;
    padding: 5px;
    z-index: 1;
    top: 31px;
    left: 28px;
  }

  .btn-flip11:hover .tooltip-text1 {
    visibility: visible;
  }

  .chart--container {
    height: 100%;
    width: 100%;
    min-height: 530px;
  }

  svg#SvgjsSvg2815 {
    background-color: yellow !important;
  }

  .nav-link.aaaa.active {
    background-color: #67778833 !important;
    /* Set your desired background color */
  }

  .nav-link.aaaa {
    font-weight: bolder;
    font-size: large;
    background: aliceblue;
  }

  /* Animation property */
  #selectStudent {
    animation: wiggle 2s linear infinite;
  }

  /* Keyframes */
  @keyframes wiggle {

    0%,
    7% {
      transform: rotateZ(0);
    }

    15% {
      transform: rotateZ(-15deg);
    }

    20% {
      transform: rotateZ(10deg);
    }

    25% {
      transform: rotateZ(-10deg);
    }

    30% {
      transform: rotateZ(6deg);
    }

    35% {
      transform: rotateZ(-4deg);
    }

    40%,
    100% {
      transform: rotateZ(0);
    }
  }

  #selectStudent {

    height: 4em;
    width: max-content;

    background: #444;
    background: linear-gradient(top, #555, #333);
    border: none;
    border-top: 3px solid orange;
    border-radius: 0 0 0.2em 0.2em;
    color: #fff;
    font-family: Helvetica, Arial, Sans-serif;
    font-size: 2em;
    transform-origin: 50% 5em;
  }
</style>

<body>

  <!--Head Navbar-->
  <div id="header-hide">
    <?php
    include ROOT_PATH . 'includes/head_navbar.php';
    // $class = ($role == "super admin") ? "admin-style" : "instructor-style";
    if (!isset($_SESSION['permission']) || $permission['course_phase_man_dashbirad'] == "1") {
      $class = "instructor-style";
    } else {
      $class = "admin-style";
    }
    $_SESSION['page'] = 'grade sheet';
    $phase = "";
    ?>
  </div>

  <!--Main contect We need to insert data here-->
  <main id="content" role="main" class="main">

    <!-- Content -->
    <div>
      <div class="content container-fluid" style="height: 25rem;">
        <?php include ROOT_PATH . 'login/alertboxheader.php'; ?>
      </div>
    </div>
    <!-- End Content -->

    <!-- Content -->
    <div class="content container-fluid" style="margin-top: -19rem;">

      <div class="row justify-content-center">

        <div class="col-lg-12 mb-3 mb-lg-5">
          <!-- Card -->
          <div class="card card-hover-shadow h-100" style="border:0.001rem solid #dddddd;">
            <!-- Header -->
            <div class="col-sm-auto" style="text-align: center; margin: 10px;">
              <div class="container-fluid">
                <!-- <ul class="nav nav-pills justify-content-start" role="tablist" style="margin:5px;">-->


                <div class="row aav">
                  <?php
                  //instructor card code
                  if (!isset($_SESSION['permission']) || $permission['course_phase_man_dashbirad'] == "1") { ?>
                    <div class="col-md-6" style="margin-bottom:10px;">
                      <ul class="nav nav-pills justify-content-start aaa1" role="tablist" style="margin:5px;">
                        <li class="nav-item" style="border-radius: 20px;">
                          <a class="aaaa">
                            <div class="d-flex">
                              <?php
                              if (isset($_COOKIE['student']) && $_COOKIE['student'] != 'all') {
                                if ($fetchuser_image != "") {
                                  $fetchuser_image1 = BASE_URL . 'includes/Pages/upload/' . $fetchuser_image;
                                  if (file_exists($_SERVER['DOCUMENT_ROOT'] . $fetchuser_image1)) {
                                    $fetchuser_image1 = BASE_URL . 'includes/Pages/upload/' . $fetchuser_image;
                                  } else {
                                    $fetchuser_image1 = BASE_URL . 'includes/Pages/avatar/avtar.png';
                                  }
                                }
                              } else {
                                $fetchuser_image1 = BASE_URL . 'assets\exam_imag\group_user.png';
                              }

                              if (!isset($course_code)) {
                                $course_code = "";
                              }

                              ?>


                              <div class="avatar avatar-lg avatar-circle" id="avtimg" style="height: 150px; width:150px;">
                                <img style="height:150px; width:150px;border: 3px solid #8c98a4;box-shadow: 1px 1px 7px 1px #8c98a4;" class="avatar" src="<?php echo $fetchuser_image1; ?>" alt="Logo">
                              </div>
                              <div class="flex-grow-2 ms-5">
                                <?php
                                if (isset($_COOKIE['student']) && $_COOKIE['student'] != 'all') { ?>
                                  <h3 class="mb-0 text-danger" style="font-weight:bold; font-size:xxx-large; font-family: cursive;"><?php echo $fetchnickname ?></h3>
                                  <span style="background-color: green;color: white;display: block;margin-top: -5px;text-align: center;
                                   border-radius: 5px;font-size: smaller;">Student</span>
                                <?php } ?>
                                <span class="card-text text-body" style="font-weight:bold;"><?php echo $course_code . ' - ' . '0' . $CourseCode11; ?></span><br>
                                <span class="card-text text-body" style="font-weight:bold;"><?php echo $Coursename11; ?></span></br>
                                <span class="card-text text-body" id="class_Name" style="font-weight:bold;"></span>
                              </div>

                            </div>
                          </a>
                        </li>

                      </ul>
                      <?php
                      if (isset($_SESSION['permission']) && $permission['course_phase_man_dashbirad'] == "1") {
                      ?>
                        <div>

                          <a class="aaaa" href="<?php echo BASE_URL; ?>includes/Pages/dashboard/mydashboard.php" style="border-radius: 10px;position: absolute;bottom: 40px;left: 160px;" title="Switch To <?php echo $username; ?>">
                            <div class="d-flex align-items-center">
                              <div class="d-flex">
                                <div class="avatar avatar-lg avatar-circle" id="avtimg" style="height: 50px; width:50px;">
                                  <img style="height:50px; width:50px;border: 1px solid #8c98a4;box-shadow: 1px 1px 7px 1px #8c98a4;" class="avatar" src="<?php echo $pic; ?>" alt="Logo">
                                  <span style="font-size: x-small;margin-left: -20px;" class="badge text-dark bg-soft-warning">Switch To <?php echo $username; ?></span>
                                </div>
                              </div>
                            </div>

                          </a>

                        </div>
                      <?php
                      }
                      ?>
                    </div>

                  <?php
                  }
                  ?>
                  <?php
                  //tabs code if student login or selected from sidebar
                  if (isset($_COOKIE['course_ids']) && isset($_COOKIE['student']) && $_COOKIE['student'] != 'all' || isset($_COOKIE['student']) && isset($_COOKIE['course_ids']) && $_COOKIE['student'] == 'all' || $role == "student") {
                  ?>
                    <div class="col-md-6 bbbb <?php echo $class; ?>">
                      <ul class="nav nav-pills aaa2" role="tablist" style="margin:5px;"> <!-- Center-aligned -->
                        <div style="display:flex;background: #09a5be17;border-radius: 10px;">

                          <?php
                          if (isset($_SESSION['permission']) && $permission['course_phase_man_dashbirad'] == "0") {
                            //student tab info
                          ?>
                            <li class="nav-item" style="border-radius: 20px;">
                              <a class="nav-link active aaaa" id="alldashboard-tab" href="#alldashboard" data-bs-toggle="pill" data-bs-target="#alldashboard" role="tab" aria-controls="alldashboard" aria-selected="false">
                                <div class="d-flex align-items-center">
                                  <?php
                                  if ($fetchuser_id != 0) {
                                    include ROOT_PATH . 'includes/Pages/stud_info.php';
                                  } else {
                                    echo "<span class='text-primary'>All</span>";
                                  }
                                  ?>
                                </div>
                              </a>
                            </li>
                          <?php
                          }
                          // same for all roles 
                          ?>
                          <?php
                          if (isset($_SESSION['permission']) && $permission['course_phase_man_dashbirad'] == "1") {
                            //student tab info
                          ?>
                            <li class="nav-item" style="border-radius: 20px;">
                              <a class="nav-link active aaaa" id="alldashboard-tab" href="#alldashboard" data-bs-toggle="pill" data-bs-target="#alldashboard" role="tab" aria-controls="alldashboard" aria-selected="false">
                                <div class="d-flex align-items-center">
                                  <?php
                                  if ($fetchuser_id != 0) {
                                    echo '<span class="text-danger">Home</span>';
                                  } else {
                                    echo "<span class='text-primary'>Home</span>";
                                  }
                                  ?>
                                </div>
                              </a>
                            </li>
                          <?php
                          }
                          // same for all roles 
                          ?>
                          <li class="nav-item" style="border-radius: 20px;">
                            <a class="nav-link aaaa" id="Metrics-tab" href="#Metrics" data-bs-toggle="pill" data-bs-target="#Metrics" role="tab" aria-controls="Metrics" aria-selected="true">
                              <div class="d-flex align-items-center">
                                <!-- Metrics -->
                                <?php
                                if ($fetchuser_id != 0) {
                                  echo '<span class="text-danger" id="singleUserMetric">Metric</span>';
                                } else {
                                  echo "<span class='text-primary' id='allMetric'>Metrics</span>";
                                }
                                ?>
                              </div>
                            </a>
                          </li>

                          <li class="nav-item" style="border-radius: 20px;">
                            <a class="nav-link aaaa" id="result-tab" href="#result" data-bs-toggle="pill" data-bs-target="#result" role="tab" aria-controls="result" aria-selected="true">
                              <div class="d-flex align-items-center">
                                <!-- Result -->
                                <?php
                                if ($fetchuser_id != 0) {
                                  echo '<span class="text-danger">Result</span>';
                                } else {
                                  echo "<span class='text-primary'>Result</span>";
                                }
                                ?>
                              </div>
                            </a>
                          </li>
                        </div>
                      </ul>
                    </div>
                    <?php
                  } else {
                    //illustartion for not student selected
                    if ($_SESSION['role'] != 'instructor') {
                    ?>
                      <br><br>
                      <div class="justify-content-center">
                        <center> <img src="<?php echo BASE_URL; ?>assets/approved/student.gif" style="    height: 800px;width: 800px;position: unset;margin-top: -150px;margin-bottom: -150px;" alt=""></center>
                      </div>
                    <?php } else {
                    ?>
                      <br><br>
                      <div class="justify-content-center">
                        <center> <img src="<?php echo BASE_URL; ?>assets/approved/student.gif" style="    height: 500px;
                    width: 500px;
                    /* position: unset; */
                    margin-top: -292px;
                    margin-bottom: -200px;" alt=""></center>
                      </div>
                  <?php
                    }
                  }
                  ?>
                </div>


              </div>



            </div>
          </div>
        </div>
      </div>

      <!-- End Header -->
      <div class="row justify-content-center">

        <div class="col-lg-12 mb-3 mb-lg-5">
          <!-- Card -->
          <div class="card card-hover-shadow h-100" style="border:0.001rem solid #dddddd;">

            <!-- Body -->
            <div class="card-body">

              <div class="tab-content">


                <?php
                // pages for tab
                if (isset($_COOKIE['phpgetcourse']) && isset($_COOKIE['student']) && $_COOKIE['student'] != 'all' || isset($_COOKIE['student']) && isset($_COOKIE['course_ids']) && $_COOKIE['student'] == 'all' || $role == "student") {
                ?>
                  <div class="tab-pane fade show active" id="alldashboard" role="tabpanel" aria-labelledby="alldashboard-tab">
                    <?php
                    if ($fetchuser_id != 0) {
                      include ROOT_PATH . 'includes/Pages/dashboard/dashboardpage.php';
                    } else if ($fetchuser_id == 0) {
                      include ROOT_PATH . 'includes/Pages/dashboard/allstd_dashboard.php';
                    }
                    ?>
                  </div>


                  <div class="tab-pane fade" id="Metrics" role="tabpanel" aria-labelledby="Metrics-tab">
                    <?php
                    if ($fetchuser_id != 0) {
                      include ROOT_PATH . 'includes/Pages/dashboard/matrixinfo.php';
                      // echo "ayu";
                    } else if ($fetchuser_id == 0) {
                      include ROOT_PATH . 'includes/Pages/dashboard/all_matrix.php';
                      // echo "varun";
                    }
                    ?>
                  </div>

                  <div class="tab-pane fade" id="result" role="tabpanel" aria-labelledby="result-tab">
                    <?php
                    if ($fetchuser_id != 0) {
                      include ROOT_PATH . 'includes/Pages/dashboard/resultpage.php';
                    } else if ($fetchuser_id == 0) {
                      include ROOT_PATH . 'includes/Pages/dashboard/all_resultpage.php';
                    }
                    ?>
                  </div>



                <?php }

                ?>

              </div>
              <!-- End Card -->
            </div>
          </div>
        </div>

      </div>
    </div>
    <!-- End Content -->

  </main>
  <!-- ========== END MAIN CONTENT ========== -->
  <?php
  function getcall($mark_total, $cat_convert_val, $count_of_value)
  {


    $get_sum = $mark_total * $cat_convert_val;
    $get_all_count = $count_of_value * 100;
    $final_cal = $get_sum / $get_all_count;
    return $final_cal;
  }
  ?>
  <!-- ========== SECONDARY CONTENTS ========== -->







  <div class="modal fade" id="memoinfo" tabindex="-1" role="dialog" aria-labelledby="memoinfoLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
      <div class="modal-content">
        <div class="modal-header">
          <h1 class="modal-title text-success" id="topic" style="font-size: x-large;"></h1>
          <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
        </div>
        <div class="modal-body">
          <input class="form-control" type="hidden" id="memo" name="memo" value="">
          <label class="form-label text-dark" style="font-weight:bold;font-size: large;">Date : </label>
          <span type="date" name="date" id="date" style="font-weight:bold;font-size: large;"></span><br>
          <label class="form-label" style="font-weight:bold;font-size: large;">Instructor : </label>
          <span type="text" name="comment" id="inst" style="font-weight:bold;font-size: large;"></span><br>
          <label class="form-label" style="font-weight:bold;font-size: large;">Comment : </label>
          <span type="text" name="comment" id="comment" style="font-weight:bold;font-size: large;"></span>
        </div>
      </div>
    </div>
  </div>

  <div class="modal fade" id="CAPinfo" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
      <div class="modal-content">
        <div class="modal-header" id="capmodalcolor">
          <h3 class="modal-title text-light" id="capname" style="margin-bottom:20px;"></h3>
          <button style="margin-top: -40px;color: black;" type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
        </div>
        <div class="modal-body">
          <div id="fetch_value_caps"></div>

        </div>
      </div>
    </div>
  </div>

  <!-- fetch file -->

  <div id="testAttachModal" class="modal fade" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered" role="document">
      <div class="modal-content">
        <div class="modal-header">
          <h3 class="modal-title text-success" id="">Attachement's</h3>
          <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
        </div>
        <div class="modal-body">
          <div id="testFile">

          </div>
        </div>
      </div>
    </div>
  </div>

  <div id="quizAttachModal" class="modal fade" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered" role="document">
      <div class="modal-content">
        <div class="modal-header">
          <h3 class="modal-title text-success" id="">Attachement's</h3>
          <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
        </div>
        <div class="modal-body">
          <div id="quizFile">

          </div>
        </div>
      </div>
    </div>
  </div>

  <div class="modal fade" id="disciplineinfo" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
      <div class="modal-content">
        <div class="modal-header">
          <h1 class="modal-title text-success" id="topic_desc" style="font-size:x-large;">discipline</h1>
          <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
        </div>
        <div class="modal-body">
          <input class="form-control" type="hidden" id="desci" name="desci" value="">
          <label class="form-label text-dark" style="font-weight:bold;font-size: large;">Date : </label>
          <span type="date" name="date" id="date_desc" style="font-weight:bold;font-size: large;"></span><br>
          <label class="form-label" style="font-weight:bold;font-size: large;">Instructor : </label>
          <span type="text" name="comment" id="inst_desc" style="font-weight:bold;font-size: large;"></span><br>
          <label class="form-label" style="font-weight:bold;font-size: large;">Comment : </label>
          <span type="text" name="comment" id="comment_desc" style="font-weight:bold;font-size: large;"></span>
        </div>
      </div>
    </div>
  </div>

  <!-- Modal -->
  <!-- <div class="modal fade" id="featuresupdate" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
      <div class="modal-dialog" role="document">
        <div class="modal-content">
          <div class="modal-header">
            <h5 class="modal-title" id="exampleModalLabel">Modal title</h5>
            <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
          </div>
          <div class="modal-body">
            hi
          </div>
          <div class="modal-footer">
            <button type="button" class="btn btn-white" data-bs-dismiss="modal">Close</button>
            <button type="button" class="btn btn-primary">Save changes</button>
          </div>
        </div>
      </div>
    </div> -->
  <script>
    $(document).ready(function() {
      // Handle tab clicks and content display
      // $('.nav-link').on("click",function() {
      $(document).on('click', '.aaaa', function() {
        // alert('hello');
        // Remove the 'active' class from all tabs
        $('.aaaa').removeClass('active');
        // Add the 'active' class to the clicked tab
        $(this).addClass('active');

        // Get the target tab content ID from the data-bs-target attribute
        var targetTab = $(this).data('bs-target');

        // Show the corresponding tab content
        $(targetTab).tab('show');
      });
    });
  </script>

  <script>
    $(document).ready(function() {

      setTimeout(function() {
        showGraph();

        // Set an interval of 3 seconds to load the function again
        setInterval(function() {
          showGraph();
        }, 100000);
      }, 1000);
    });

    function showGraph() {
      var sideId = $("#state").val();
      $.post("<?php echo BASE_URL; ?>includes/line_chart/get_Data.php/?sideId=" + sideId, function(data) {
        console.log('varun', data);
        var name = [];
        var marks = [];

        for (var i in data) {
          name.push(data[i].symbol);
          marks.push(data[i].over_all_grade_per);
        }

        var chartdata = {
          labels: name,
          datasets: [{
            label: 'Student Marks',
            backgroundColor: '#00c9a74f',
            borderColor: '#00c9a7',
            hoverBackgroundColor: '#CCCCCC',
            hoverBorderColor: 'green',
            data: marks
          }]
        };

        var graphTarget = $("#graphCanvas");
        var barGraph = new Chart(graphTarget, {
          type: 'line',
          data: chartdata
        });
      });
    }
  </script>


  <script>
    $(".get_cap_noti").on("click", function() {
      var getid = $(this).attr("id");
      $.ajax({
        type: 'POST',
        url: 'fetch_cap_data.php',
        data: 'id=' + getid,
        success: function(response) {
          $("#fetch_value_caps").empty();

          $("#fetch_value_caps").append(response);
        }
      });
    });
    $(".testFiles").on("click", function() {
      var testFileId = $(this).attr("id");
      var className = $(this).attr("name");
      $.ajax({
        type: 'POST',
        url: "addStuDoc.php",
        data: {
          testFileId: testFileId,
          className: className,
        },
        dataType: "html",

        success: function(resultData1) {
          $("#testFile").empty();
          $("#testFile").html(resultData1);
        }
      });
    });

    $(".quizFiles").on("click", function() {
      var testFileId = $(this).attr("id");
      var className = $(this).attr("name");
      $.ajax({
        type: 'POST',
        url: "addStuDoc.php",
        data: {
          testFileId: testFileId,
          className: className,
        },
        dataType: "html",

        success: function(resultData1) {
          $("#quizFile").empty();
          $("#quizFile").html(resultData1);
        }
      });
    });
  </script>

  <!-- <script>
  $(document).ready(function() {
    $('#mydashboardinst-tab').click(function() {
      $('#mydashboardinst').tab('show'); // Activate the tab
      $('#mydashboardinst').addClass('show active'); // Add classes to show the content
    });
  });
</script> -->



  <!-- <script>
  $(".fetchSubCheckList").on("click", function() {
    const checkListId = $(this).data("id");
    $.ajax({
      type: 'POST',
      url: '<?php echo BASE_URL; ?>includes/Pages/addCheckAndSubCheckList.php',
      data: {
        checkListId: checkListId,
      },
      success: function(response) {
        $("#subCheckListId1").empty();
        $("#subCheckListId1").html(response);
      }
    });
  });
</script> -->

  <script>
    $(".fetchSubCheckList").on("click", function() {
      const checkId = $(this).data("id");
      $("#checknamesub").text($(this).data("name"));
      const userId = <?php echo $fetchuser_id ?>;
      const ctpId = <?php echo $std_course1 ?>;
      $("#checkID").val(checkId);
      $.ajax({
        type: 'POST',
        url: '<?php echo BASE_URL; ?>includes/Pages/addCheckAndSubCheckList.php',
        data: {
          checkId1: checkId,
          ctpId: ctpId,
          userId: userId
        },
        success: function(response) {
          $("#subCheckListId1").empty();
          $("#subCheckListId1").html(response);
        }
      });
    });
  </script>

  <script>
    $("#addAllCheckList").on("click", function() {
      const studentId = <?php echo $fetchuser_id ?>;
      const ctpId = <?php echo $std_course1 ?>;
      const totalSubItems = $('.allcheckList:checked').length;
      $('.allcheckList:checked').each(function() {
        const dataItemValue = $(this).data('checklist');
        const subItemValue = $(this).val();
        sendDataToServer(dataItemValue, subItemValue, studentId, ctpId, totalSubItems, ++submittedCount);
      });
    })

    function sendDataToServer(dataItemValue, subItemValue, studentId, ctpId, totalSubItems, submittedCount) {
      $.ajax({
        type: 'POST',
        url: '<?php echo BASE_URL; ?>includes/Pages/addCheckAndSubCheckList.php',
        data: {
          dataItem: dataItemValue,
          subItem: subItemValue,
          studentId: studentId,
          ctpId: ctpId,
        },
        success: function(response) {
          if (submittedCount == totalSubItems) {
            location.reload(); // Reload the page when all subitems are submitted
          }
        }
      });
    }
  </script>


  <!-- <script type="text/javascript">
      // Check if the 'showModal' parameter is present in the URL
        const urlParams = new URLSearchParams(window.location.search);
        const showModalParam = urlParams.get('showModal');
        // alert(showModalParam);

        // Function to open the modal
        function openModal() {
            $('#featuresupdate').css('display','block');
        }

        // Function to close the modal and remove the query parameter
        function closeModal() {
            $('#featuresupdate').modal('hide');
            // Remove the query parameter and reload the page
            history.replaceState({}, document.title, window.location.pathname);
        }

        // If the 'showModal' parameter is 'true', open the modal when the page loads
        if (showModalParam == 'true') {
          // alert('hello');
            openModal();
        }
    </script> -->

  <!--Footer-->


  <footer id="contenthome" role="footer" class="footer">
    <?php include ROOT_PATH . 'includes/footer2.php'; ?>
  </footer>

  <!--   <script type="text/javascript">
    function showHide(elementid){
            if (document.getElementById(elementid).style.display == 'none'){
                document.getElementById(elementid).style.display = '';
            } else {
                document.getElementById(elementid).style.display = 'none';
            }
    }
    window.onload = function () { reSizeTextarea(); showHide('loading-screen'); }
</script> -->



</body>

<script>
  $("#allMetric").on("click", function() {
    const stdCour = <?php echo $std_course1; ?>;
    const courseCode11 = <?php echo $CourseCode11; ?>;
    $.ajax({
      type: 'POST',
      url: '<?php echo BASE_URL; ?>includes/Pages/fetchHeatMapData.php',
      data: {
        stdCour: stdCour,
        courseCode11: courseCode11,
      },
      success: function(response) {
        // alert(response);
        $("#allStuHeatMap").empty();
        $("#heapMapLoading").css("display", "none");
        $("#allStuHeatMap").html(response);
      }
    });
  });
</script>

<script>
  $("#singleUserMetric").on("click", function() {
    const stdCour = <?php echo $std_course1; ?>;
    const fetchUserId = <?php echo $fetchuser_id; ?>;
    $.ajax({
      type: 'POST',
      url: '<?php echo BASE_URL; ?>includes/Pages/fetchHeatMapDataStu.php',
      data: {
        stdCour: stdCour,
        fetchUserId: fetchUserId,
      },
      success: function(response) {
        $("#singleUserHeapMap").empty();
        $("#singleUserHeapMap").html(response);
      }
    });
  })
</script>

</html>