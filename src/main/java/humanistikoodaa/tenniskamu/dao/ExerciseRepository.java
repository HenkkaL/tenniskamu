package humanistikoodaa.tenniskamu.dao;

import org.springframework.data.jpa.repository.JpaRepository;

import humanistikoodaa.tenniskamu.entity.Exercise;

public interface ExerciseRepository extends JpaRepository<Exercise, Long>{

}
