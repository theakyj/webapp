import { render, screen } from '@testing-library/react';
import { AuthContextProvider } from '../context/AuthContext';

describe('AuthContextProvider', () => {
  it('renders children correctly', () => {
    render(
      <AuthContextProvider>
        <div>Test Child</div>
      </AuthContextProvider>
    );

    expect(screen.getByText('Test Child')).toBeTruthy();
  });
});
