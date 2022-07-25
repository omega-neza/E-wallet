

<%@page import="Dao.UsersDao"%>
<%@page import="Domain.User"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="useraccountcss.css">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    </head>
    <body>
        
        
        <% 
                    User us=(User) request.getSession().getAttribute("User");
                    int id = us.getId();
                   // String email = us.getEmail();
                %>
           
        
   
        
                
         <section class="h-100 h-custom gradient-custom-2">
          <div class="container py-5 h-100">
            <div class="row d-flex justify-content-center align-items-center h-100">
              <div class="col-12">
                <div class="card card-registration card-registration-2" style="border-radius: 15px;">
                  <div class="card-body p-0">
                    <div class="row g-0">
                      <div class="col-lg-6">
                        <div class="p-5">
                          <p class="text-center h1 fw-bold mb-5 mx-1 mx-md-4 mt-4">Your Wallet</p>

                           <%
                            User uamount = new UsersDao().findBYId(id);
                            %>
                                <div class="d-flex flex-row align-items-center mb-4">
                                    <i class="fas fa-user fa-lg me-3 fa-fw"></i>
                                    <div class="form-outline flex-fill mb-0">
                                      <input type="text" id="camount" name="camount" value="<%= uamount.getAmount()%>" readonly="" class="form-control" />
                                      <label class="form-label" for="camount">Your Current Amount</label>
                                    </div>
                                  </div>
                                <form action="Addmoney.jsp"  class="mx-1 mx-md-4"  method="post">

                                    
                                  <div class="d-flex flex-row align-items-center mb-4">
                                    <i class="fas fa-user fa-lg me-3 fa-fw"></i>
                                    <div class="form-outline flex-fill mb-0">
                                      <input type="text" id="id" name="id" value="<%= uamount.getId()%>" readonly="" class="form-control" />
                                      <label class="form-label" for="id">Your Id</label>
                                    </div>
                                  </div>

                                  <div class="d-flex flex-row align-items-center mb-4">
                                    <i class="fas fa-envelope fa-lg me-3 fa-fw"></i>
                                    <div class="form-outline flex-fill mb-0">
                                      <input type="text" id="name" name="name" value="<%= uamount.getName()%>" readonly="" class="form-control" />
                                      <label class="form-label" for="name">Your Name</label>
                                    </div>
                                  </div>

                                  <div class="d-flex flex-row align-items-center mb-4">
                                    <i class="fas fa-lock fa-lg me-3 fa-fw"></i>
                                    <div class="form-outline flex-fill mb-0">
                                      <input type="text" id="email" name="email"  value="<%= uamount.getEmail()%>" readonly="" class="form-control" />
                                      <label class="form-label" for="email">Your Email</label>
                                    </div>
                                  </div>
                                      
                                  <div class="d-flex flex-row align-items-center mb-4">
                                    <i class="fas fa-lock fa-lg me-3 fa-fw"></i>
                                    <div class="form-outline flex-fill mb-0">
                                      <input type="text" id="amount" name="amount" class="form-control" required/>
                                      <label class="form-label" for="amount">Money to Add</label>
                                    </div>
                                  </div>


                                  <div class="form-check d-flex justify-content-center mb-5">
                                        <label class="form-check-label" for="form2Example3">
                                      Do you want to logout? <a href="Login.jsp">Logout</a>
                                    </label>
                                  </div>

                                  <div class="d-flex justify-content-center mx-4 mb-3 mb-lg-4">
                                    <button type="submit" class="btn btn-primary btn-lg">Add Money</button>
                                  </div>

                                </form>
                        </div>

                      </div>
                      <div class="col-lg-6 bg-indigo text-white">
                        <div class="p-5">
                          <p class="text-center h1 fw-bold mb-5 mx-1 mx-md-4 mt-4">Send Money</p>

                                <form action="Sendmoney.jsp" class="mx-1 mx-md-4"  method="post">

                                  <div class="d-flex flex-row align-items-center mb-4">
                                    <i class="fas fa-user fa-lg me-3 fa-fw"></i>
                                    <div class="form-outline flex-fill mb-0">
                                      <input type="text" id="userid" name="userid" value="<%= uamount.getId()%>" readonly="" class="form-control" />
                                      <label class="form-label" for="userid">Your Id</label>
                                    </div>
                                  </div>

                                  <div class="d-flex flex-row align-items-center mb-4">
                                    <i class="fas fa-envelope fa-lg me-3 fa-fw"></i>
                                    <div class="form-outline flex-fill mb-0">
                                      <input type="text" id="receiveremail" name="receiveremail" class="form-control" required/>
                                      <label class="form-label" for="receiveremail">Receiver's Email</label>
                                    </div>
                                  </div>

                                  <div class="d-flex flex-row align-items-center mb-4">
                                    <i class="fas fa-lock fa-lg me-3 fa-fw"></i>
                                    <div class="form-outline flex-fill mb-0">
                                      <input type="text" id="sendamount" name="sendamount" class="form-control" required/>
                                      <label class="form-label" for="sendamount">Amount to Send</label>
                                    </div>
                                  </div>



                                  <div class="d-flex justify-content-center mx-4 mb-3 mb-lg-4">
                                    <button type="submit" class="btn btn-primary btn-lg">Send</button>
                                  </div>

                                </form>

                        </div>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
</section>
                
    </body>
</html>
