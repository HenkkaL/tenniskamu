package humanistikoodaa.tenniskamu.dao;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.rest.core.annotation.RepositoryRestResource;

import humanistikoodaa.tenniskamu.entity.ExerciseCategory;

@RepositoryRestResource(collectionResourceRel = "exerciseCategory", path = "exercise-category")
public interface ExerciseCategoryRepository extends JpaRepository<ExerciseCategory, Long>{

}
