package humanistikoodaa.tenniskamu.dao;

import org.springframework.data.jpa.repository.JpaRepository;

import humanistikoodaa.tenniskamu.entity.Exercise;
import org.springframework.web.bind.annotation.CrossOrigin;

@CrossOrigin("http://localhost:4200")
public interface ExerciseRepository extends JpaRepository<Exercise, Long>{

}
