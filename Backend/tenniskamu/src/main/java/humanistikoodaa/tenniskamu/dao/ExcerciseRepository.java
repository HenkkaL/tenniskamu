package humanistikoodaa.tenniskamu.dao;

import org.springframework.data.jpa.repository.JpaRepository;

import humanistikoodaa.tenniskamu.entity.Excercise;

public interface ExcerciseRepository extends JpaRepository<Excercise, Long>{

}
