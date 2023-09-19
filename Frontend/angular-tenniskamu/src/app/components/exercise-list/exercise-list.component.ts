import { Component, OnInit } from '@angular/core';
import { Exercise } from 'src/app/common/exercise';
import { ExerciseService } from 'src/app/services/exercise.service';

@Component({
  selector: 'app-exercise-list',
  templateUrl: './exercise-list-table.component.html',
  //templateUrl: './exercise-list.component.html',
  styleUrls: ['./exercise-list.component.css']
})
export class ExerciseListComponent implements OnInit {

  exercises: Exercise[] = [];
  constructor(private exerciseService: ExerciseService) {}

  ngOnInit(): void {
    this.listExercise();
  }

  listExercise() {
    this.exerciseService.getExerciseList().subscribe(
      data => {
        this.exercises = data;
      }
    )
  }

}
