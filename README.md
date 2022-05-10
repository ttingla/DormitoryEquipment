# DormitoryEquipment





项目结构
1














#### 介绍
大学宿舍设备资源管理系统 ；

实现 **登录** 、 **注册** 、 **增** 、 **删** 、 **改** 、 **查** ；



#### 环境准备
开发平台：Eclipse 2017

数据库：MySQL 5.0.18

服务器：Tomcat 7.0

注意：需要安装Eclipse开发平台、MySQL数据库和Tomcat服务器，版本不一定完全一致，做好版本适应性配置即可。





#### 基本原理

 **1. 相关技术** 


**Structs** 


一、Structs1原理

1．Structs1原理图

![输入图片说明](https://images.gitee.com/uploads/images/2021/1107/233111_d6b38d02_9956838.png "图片1.png")

2．Structs1原理步骤

用户在视图层输入数据。

第一步：Structs框架总控制器，初始化,开始读取strusts-config.xml文件。Struts框架的总控制器ActionServlet是一个Servlet，在web.xml中配置成自动启动的Servlet，在启动时总控制器会读取配置文件(struts-config.xml)的配置信息，为Struts中不同的模块初始化相应的对象。(面向对象思想)

第二步：视图层向总控制器发送Http请求，用户提交表单或者通过URL向WEB服务器提交请求，请求的数据用HTTP协议传给web服务器

第三步：Form填充；structs的总控制器ActionServlet在用户提交请求时将数据放到对应的form对象中的成员变量中。

第四步：派发请求；控制器根据配置信息，对象ActionConfig将请求派发到具体的Action，对应的formBean一并传给这个Action中的excute()方法。

第五步：处理业务；Action一般只包含一个excute()方法，负责执行相应的业务逻辑(调用其它的业务模块)完毕后返回一个ActionForward对象。服务器通过ActionForward对象进行转发工作。

第六步：返回响应；Action将业务处理的不同结果返回一个目标响应对象给总控制器。

第七步：查找响应；总控制器根据Action处理业务返回的目标响应对象，找到对应的资源对象，一般情况下为jsp页面。

第八步:响应用户；目标响应对象将结果传递给资源对象，将结果展现给用户。


3．Structs的优缺点

优点：

  		①开源的框架，结构清晰

  		②是MVC的经典实现（MVC是一种思想，而不是一种技术）

  		③处理异常机制，实现国际化 

  		④具有强大的标签库 

  		⑤解决了JSP页面存在大量的JAVA代码，维护起来方便 

  		⑥在formBean中会自动提交，不会去使用传统的get、set方法得到值、取值


缺点： 

  		①配置复杂 

  		②测试不方便 

  		③依赖web容器 

  		④action是一个单例模式，必须设置为线程安全


二、Structs2原理

1．Structs2原理图

![输入图片说明](https://images.gitee.com/uploads/images/2021/1107/233234_d6b959b1_9956838.png "图片2.png")

2．Struct2原理步骤

第一步：客户端初始化一个指向Servlet容器（例如Tomcat）的请求

第二步：请求经过一系列的过滤器（Filter）

第三步：接着FilterDispatcher被调用，FilterDispatcher询问ActionMapper来决定这个请是否需要调用某个Action

第四步：如果ActionMapper决定需要调用某个Action，FilterDispatcher把请求的处理交给ActionProxy

第五步：ActionProxy通过Configuration Manager询问框架的配置文件，找到需要调用的Action类

第六步：ActionProxy创建一个ActionInvocation的实例

第七步：ActionInvocation实例使用命名模式来调用，在调用Action的过程前后，涉及到相关拦截器（Intercepter）的调用

第八步：一旦Action执行完毕，ActionInvocation负责根据struts.xml中的配置找到对应的返回结果。返回结果通常是（但不总是，也可能是另外的一个Action链）一个需要被表示的JSP或者FreeMarker的模版。在表示的过程中可以使用Struts2框架中继承的标签。在这个过程中需要涉及到ActionMapper

注意：在上述过程中所有的对象（Action，Results，Interceptors等）都是通过ObjectFactory来创建的


3．Structs2的优缺点

优点：

①大量的拦截器：Struts2本身提供了大量的可重用的拦截器，比如类型转换拦截器，很多时候从页面取得参数，这个时候它是String类型的，需要手动。

②基于插件的框架：Struts2是一个基于插件的框架，社区中提供了很多实用的插件，比如jfreechat/json等等，使用这些插件可以简化我们的开发，加快开发进度。Struts2最大的缺点莫过于在好多web服务器上支持不好，例如在websphere5.5,weblogic8.1及以前版本支持非常查，需要用最新的。

③多种视图的支持：多种视图的支持：jsp，freemarker，Veloctiy，甚至可以通过轻松的改造支持pdf，同一个项目中可以支持多种视图。

④更加的模块化：与Struts1.X 相比，Struts2更加的模块化，可以轻松将配置信息按功能界限拆分成多个文件，便于管理和团队协作开发。

⑤与Spring的集成：与Struts1.x相比，Struts2不必再自己编写singleton，进一步的降低了程序间的耦合性，就Struts2内部本身而言，降低了框架本身的偶合性。

⑥基于pojo易于测试：在Struts1.x中需要Mock出这两个Http对象，很难编写Action的单元测试，与Struts1.x相比，Struts2的Action 不再依赖于HttpServletRequest和HttpServletResponse对象，使我们能够更方便的针对Action编写单元测试。


缺点：

①Struts2中Action中取得从jsp中传过来的参数时麻烦。可以为Struts2的Action中的属性配置上Getter和Setter方法，通过默认拦截器，就可以将请求参数设置到这些属性中。但当请求参数很多时，Action类就显得很臃肿。Action中的属性不但可以用来获得请求参数还可以输出到Jsp中，会更乱。

②校验比较繁琐。如果校验出错的只能给用户提示一些信息。如果有多个字段，每个字段出错时返回到不同的画面，在Strut2框架下借助框架提供的校验逻辑就不容易实现。

③安全性有待提高。使用缩写的导航参数前缀时的远程代码执行漏洞，另一个是使用缩写的重定向参数前缀时的开放式重定向漏洞。



**Spring** 


1.简介

Spring是一个开源框架，是2003年兴起的轻量级的Java开发框架,为解决企业应用开发的复杂性而创建的。简单来说，Spring是一个轻量级的控制反转（IOC）和面向切面（AOP）的容器框架。日常开发中IOC容器使用较多，可以装载Bean，即Java中的类，不用在每次使用类的时候初始化，很少出现关键字new。另外spring的AOP，事务管理等等也会经常使用。

IOC:控制反转，是一种降低对象之间耦合关系的设计思想。如：租赁房屋，平常租房需要自己逐个小区寻找房屋，然后使用了IOC之后，即需找一个租房中介，把对房屋的需求告诉中介，就可以直接找到合适的房屋。即把需求交给了第三方，有第三方帮助你完成你的需求，中介就相当于Spring容器。

AOP:面向切面编程，是面向对象开发的一种补充，允许开发人员在不改变原来模型的基础上动态的修改模型以满足新的需求，如：动态的增加日志、安全或异常处理等。AOP使业务逻辑各部分间的耦合度降低，提高程序可重用性，提高开发效率。

2.Spring的主要特征

①轻量级：Spring是一个轻量级的开发框架，基本版本大约只有2M

②IOC：控制反转，应用程序中对象之间的依赖是由Spring 来控制的

③AOP：面向切面编程，Spring支持面向切面编程，这样可以将业务逻辑和系统服务分开，分离

④容器：包含并管理应用程序中对象的生命周期和配置信息

⑤MVC思想：Spring也是基于MVC思想的框架，也遵循模型-视图-控制器这三个层次

⑥事务：spring提供一个持续化的接口，可以上至扩展到本地事务下至扩展到全局事务

⑦异常处理：Spring 提供方便的API把具体技术相关的异常（比如由JDBC，hibernate,or JDO抛出的）转化为一致的unchecked 异常。

3.Spring优缺点

优点：

①Spring能有效地组织你的中间层对象。

②Spring能消除在许多工程中常见的对Singleton的过多使用。降低了系统的可测试性和面向对象的程度。

③通过一种在不同应用程序和项目间一致的方法来处理配置文件，Spring能消除各种各样自定义格式的属性文件的需要。

④通过把对接口编程而不是对类编程的代价几乎减少到没有，Spring能够促进养成好的编程习惯。 
⑤Spring被设计为让使用它创建的应用尽可能少的依赖于他的APIs。在Spring应用中的大多数业务对象没有依赖于Spring。 

⑥使用Spring构建的应用程序易于单元测试。

⑦Spring能使EJB的使用成为一个实现选择,而不是应用架构的必然选择。能选择用POJOs或local EJBs来实现业务接口，却不会影响调用代码。 

⑧Spring帮助你解决许多问题而无需使用EJB。Spring能提供一种EJB的替换物，它们适用于许多web应用。例如，Spring能使用AOP提供声明性事务管理而不通过EJB容器，如果你仅仅需要与单个数据库打交道，甚至不需要一个JTA实现。 

⑨Spring为数据存取提供了一个一致的框架,不论是使用的是JDBC还是O/R mapping产品（如Hibernate）。

缺点：

①jsp中要写很多代码、控制器过于灵活，缺少一个公用控制器

②Spring不支持分布式，这也是EJB仍然在用的原因之一。


 **Hibernate** 


1.hibernate的工作原理

第一步：Configuration.config() 来读取xml配置文件

第二步：Configuration.config()来读取配置文件里面的映射信息

第三步：创建会话工厂

第四步：打开会话

第五步：开启事务

第六步：持久化到数据库

第七步：关闭会话

第八步：关闭会话工厂

2.hibernate优缺点

优点：

①hibernate是基于ORMapping技术的开源的框架，对JDBC进行了轻量级的封装，使用面向对象的思维来操纵数据库。 

②hibernate提供了session缓存和二级缓存，对于不需要进行复杂查询的系统，性能有提升。 

③低侵入式设计

缺点：

①hibernate不容易上手，学习成本太高

②hibernate由于不直接对底层数据库进行操作，所以不适合复杂的查询（统计）

③不适合大量的聚集操作（存储过程）




 **2. 基本原理** 

SSH是 Struts、Spring、Hibernate的一个集成框架，是目前较流行的一种web应用程序开源框架，用于构建灵活、易于扩展的多层Web应用程序。

SSH构建系统的基本业务流程： 

Struts作为系统的整体基础架构，负责MVC的分离，在Struts框架的模型部分，控制业务跳转，利用Hibernate框架对持久层提供支持。Spring一方面作为一个轻量级的IoC容器，负责查找、定位、创建和管理对象及对象之间的依赖关系，另一方面能使Struts和Hibernate更好地工作。

SSH框架的系统从职责上分为四层：表示层、业务逻辑层、数据持久层和域模块层(实体层)。

SSH框架的项目，该架构主要分为三个层次：

（1）Struts2：负责web层

（2）Spring：业务层的管理

（3）Hibernate：负责数据持久化

在表示层中，首先通过JSP页面实现交互界面，负责传送请求(Request)和接收响应(Response)，然后Struts根据配置文件(struts-config.xml)将ActionServlet接收到的Request委派给相应的Action处理。

在业务层中，管理服务组件的Spring IoC容器负责向Action提供业务模型(Model)组件和该组件的协作对象数据处理(DAO)组件完成业务逻辑，并提供事务处理、缓冲池等容器组件以提升系统性能和保证数据的完整性。

在持久层中，则依赖于Hibernate的对象化映射和数据库交互，处理DAO组件请求的数据，并返回处理结果。


采用上述开发模型，不仅实现了视图、控制器与模型的彻底分离，而且还实现了业务逻辑层与持久层的分离。无论前端如何变化，模型层只需很少的改动，并且数据库的变化也不会对前端有所影响，大大提高了系统的可复用性。而且由于不同层之间耦合度小，有利于团队成员并行工作，大大提高了开发效率。






#### 注意

    1.MySQL 版本5.0以上与8.0以上配置有些许差异，需要调整


  ` ` # MySQL 5.Xjdbc.driver=com.mysql.jdbc.Driver``
    > # MySQL 8.Xjdbc.driver=com.mysql.cj.jdbc.Driver

    2.运行项目前提前配置好MySQL数据库、Tomcat服务器、IDEA maven依赖库

    3.本系统仅实现简单功能，仅为更好理解SSH原理，需进一步完善更多功能及健壮性


#### LICENSE



