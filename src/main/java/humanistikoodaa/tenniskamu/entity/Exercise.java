package humanistikoodaa.tenniskamu.entity;

import lombok.Data;

import org.hibernate.annotations.CreationTimestamp;
import org.hibernate.annotations.UpdateTimestamp;

import jakarta.persistence.*;
import java.util.Date;

@Entity
@Table(name="exercise")
@Data
public class Exercise {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "id")
	private Long id;
	
	@ManyToOne
	@JoinColumn(name = "category_id", nullable = false)
	private ExerciseCategory category;
	
	@Column(name = "name")
	private String name;
	
	@Column(name = "description")

	private String description;
	
	@Column(name = "dificulty")
	private int dificulty;
	
	@Column(name = "players_max")
	private int playersMax;
	
	@Column(name = "players_min")
	private int playersMin;
	
	@Column(name = "image_url")
	private String imageUrl;
	
	@Column(name = "date_created")
	@CreationTimestamp
	private Date dateCreated;
	
	@Column(name = "last_updated")
	@UpdateTimestamp
	private Date dateUpdated;
}
