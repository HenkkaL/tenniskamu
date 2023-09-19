package humanistikoodaa.tenniskamu.dao;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.rest.core.annotation.RepositoryRestResource;

import humanistikoodaa.tenniskamu.entity.ExerciseCategory;
import org.springframework.web.bind.annotation.CrossOrigin;

@CrossOrigin("http://localhost:4200")
@RepositoryRestResource(collectionResourceRel = "exerciseCategory", path = "exercise-category")
public interface ExerciseCategoryRepository extends JpaRepository<ExerciseCategory, Long>{

}
