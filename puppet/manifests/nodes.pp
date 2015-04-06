# == nodes.pp === #

#node general_node {
node default {

    Exec { path => '/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/bin:/usr/local/sbin' }

    # Common modules 
    include apache
    include tomcat
    include mysql
    include jenkins
}
