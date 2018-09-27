package com.kg.jdbcconnectivity;

/**
 * Logs
 */
public class User {

    private String id;
    private String name;
    private int salary;

    public User(){}
    public User(String id,String name,int salary){
    this.id=id;
    this.name=name;
    this.salary=salary;
}
/**
 * @return the id
 */
public String getId() {
    return id;
}/**
 * @param id the id to set
 */
public void setId(String id) {
    this.id = id;
}/**
 * @return the name
 */
public String getName() {
    return name;
}/**
 * @param name the name to set
 */
public void setName(String name) {
    this.name = name;
}/**
 * @return the salary
 */
public int getSalary() {
    return salary;
}/**
 * @param salary the salary to set
 */
public void setSalary(int salary) {
    this.salary = salary;
}
@Override
public String toString() {
    return "id::"+id+",name::"+name+",Salary:::"+salary;
}
}