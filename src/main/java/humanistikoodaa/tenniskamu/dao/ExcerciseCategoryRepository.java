package humanistikoodaa.tenniskamu.dao;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.rest.core.annotation.RepositoryRestResource;

import humanistikoodaa.tenniskamu.entity.ExcerciseCategory;

@RepositoryRestResource(collectionResourceRel = "excerciseCategory", path = "excercise-category")
public interface ExcerciseCategoryRepository extends JpaRepository<ExcerciseCategory, Long>{

}
