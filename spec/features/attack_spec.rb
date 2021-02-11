feature 'Attacking' do
  scenario 'attack player 2' do
    sign_in_and_play
    click_link 'Attack'
    expect(page).to have_content 'Charlotte attacked Mittens'
  end

  scenario 'reduce player 2 HP by 10' do
    sign_in_and_play
    click_link 'Attack'
    click_link 'OK'
    expect(page).not_to have_content 'Mittens: 60HP'
    expect(page).to have_content 'Mittens: 50HP'
  end
end


