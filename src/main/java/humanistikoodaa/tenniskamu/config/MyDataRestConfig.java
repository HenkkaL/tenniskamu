package humanistikoodaa.tenniskamu.config;

import org.springframework.context.annotation.Configuration;
import org.springframework.data.rest.core.config.RepositoryRestConfiguration;
import org.springframework.data.rest.webmvc.config.RepositoryRestConfigurer;
import org.springframework.http.HttpMethod;
import org.springframework.web.servlet.config.annotation.CorsRegistry;

import humanistikoodaa.tenniskamu.entity.Exercise;
import humanistikoodaa.tenniskamu.entity.ExerciseCategory;

@Configuration
public class MyDataRestConfig implements RepositoryRestConfigurer {

	@Override
	public void configureRepositoryRestConfiguration(RepositoryRestConfiguration config, CorsRegistry cors) {
		// TODO Auto-generated method stub
		//RepositoryRestConfigurer.super.configureRepositoryRestConfiguration(config, cors);
		HttpMethod[] theUnsupportedActions = {HttpMethod.PUT, HttpMethod.POST, HttpMethod.DELETE};
		
		config.getExposureConfiguration()
		.forDomainType(Exercise.class)
		.withItemExposure((metadata, httpMethods) -> httpMethods.disable(theUnsupportedActions))
		.withCollectionExposure((metadata, httpMethods) -> httpMethods.disable(theUnsupportedActions));
		
		config.getExposureConfiguration()
		.forDomainType(ExerciseCategory.class)
		.withItemExposure((metadata, httpMethods) -> httpMethods.disable(theUnsupportedActions))
		.withCollectionExposure((metadata, httpMethods) -> httpMethods.disable(theUnsupportedActions));
	}

}
