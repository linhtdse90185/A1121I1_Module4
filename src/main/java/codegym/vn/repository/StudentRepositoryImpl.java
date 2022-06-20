package codegym.vn.repository;

import codegym.vn.entity.Student;
import org.springframework.stereotype.Repository;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Repository
public class StudentRepositoryImpl implements StudentRepository {
    private static Map<String, Student> studentMap = new HashMap<>();
    static {
        studentMap.put("SV001", new Student("SV001", "Hoàng"));
        studentMap.put("SV002", new Student("SV002", "Lan"));
        studentMap.put("SV003", new Student("SV003", "Nam"));
        studentMap.put("SV004", new Student("SV004", "Thuy"));
        studentMap.put("SV005", new Student("SV005", "Manh"));
    }
    @Override
    public void create(Student student) {
        if (!studentMap.containsKey(student.getId())) {
            studentMap.put(student.getId(), student);
        }
    }

    @Override
    public void update(Student student) {
        if (studentMap.containsKey(student.getId())) {
            studentMap.put(student.getId(), student);
        }
    }

    @Override
    public void delete(String id) {
        if (studentMap.containsKey(id)) {
            studentMap.remove(id);
        }
    }

    @Override
    public List<Student> findAll() {
        return new ArrayList<>(studentMap.values());
    }

    @Override
    public Student findById(String id) {
        return studentMap.get(id);
    }
}
