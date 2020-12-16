import { render, screen } from '@testing-library/react';
import App from './App';
import { area } from './Components/firtsComponents';

test('renders learn react link', () => {
  render(<App />);
  const linkElement = screen.getByText(/learn react/i);
  expect(linkElement).toBeInTheDocument();
});

test('calculo de Area es', () => {
  const calcularArea = area(10,10);
  expect(calcularArea).toEqual(100)
});