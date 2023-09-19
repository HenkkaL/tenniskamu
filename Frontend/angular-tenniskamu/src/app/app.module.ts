import { NgModule } from '@angular/core';
import { BrowserModule } from '@angular/platform-browser';

import { AppComponent } from './app.component';
import { ExerciseListComponent } from './components/exercise-list/exercise-list.component';
import { HttpClientModule } from '@angular/common/http'
import { ExerciseService } from './services/exercise.service';

@NgModule({
  declarations: [
    AppComponent,
    ExerciseListComponent
  ],
  imports: [
    BrowserModule,
    HttpClientModule
  ],
  providers: [ExerciseService],
  bootstrap: [AppComponent]
})
export class AppModule { }
