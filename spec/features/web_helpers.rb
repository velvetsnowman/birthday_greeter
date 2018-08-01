# frozen_string_literal: true

def visit_and_input_name
  visit('/')
  fill_in :persons_name, with: 'Daniel'
end
