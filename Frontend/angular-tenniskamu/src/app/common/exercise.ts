export class Exercise {

  constructor(
    public id: number,
    public name: string,
    public description: string,
    public dificulty: number,
    public playersMax: number,
    public playersMin: number,
    public imageUrl: string,
    public dateCreated: Date,
    public dateUpdated: Date)
    {}
}
