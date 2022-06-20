package codegym.vn.service;

import codegym.vn.entity.Student;

import java.util.List;

public interface StudentService {
    void create(Student student);
    void update(Student student);
    void delete(String id);
    List<Student> findAll();
    Student findById(String id);
}
