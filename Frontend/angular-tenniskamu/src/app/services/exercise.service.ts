import { Injectable } from '@angular/core';
import { HttpClient } from '@angular/common/http';
import { Exercise } from '../common/exercise';
import { Observable } from 'rxjs';
import { map } from 'rxjs/operators';

@Injectable({
  providedIn: 'root'
})
export class ExerciseService {

  private baseUrl = 'http://localhost:8080/api/exercises';

  constructor(private httpClient: HttpClient) { }

  getExerciseList(): Observable<Exercise[]>{
    return this.httpClient.get<GetResponse>(this.baseUrl).pipe(
      map(response => response._embedded.exercises)
    )
  }
}

interface GetResponse {
  _embedded: {
    exercises: Exercise[];
  }
}
