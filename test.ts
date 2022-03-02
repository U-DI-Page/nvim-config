import { getName } from './util'
const fs = require('fs');

export interface ITest {
  name?:string;
  age?: number;
}

const test = (params: ITest) => {
  return `名字是${params.name}, 年龄是${params.age}`;
}

test({ name: 'yeronggen', age: 18 })
console.log('666');

getName();
