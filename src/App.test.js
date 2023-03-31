import { render, screen } from '@testing-library/react';
import * as App from './App';

test.skip('should render', () => {
  const {getByText} = render(<App />);
  const appTitle = getByText("Jan! Ken! Pon!");
  expect(appTitle).toBeInTheDocument();
});
