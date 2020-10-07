describe 'Upload' do
  before(:each) do
    @file_txt = Dir.pwd + '/spec/upload_files/draft.txt'
    @file_image = Dir.pwd + '/spec/upload_files/image_1.png'
    visit '/upload'
  end

  it 'Upload text file' do
    attach_file('file-upload', @file_txt)
    find('#file-submit').click
    attach_file = find('#uploaded-file')
    expect(attach_file.text).to eql 'draft.txt'
  end

  it 'Upload image file' do
    attach_file('file-upload', @file_image)
    find('#file-submit').click

    attach_name_file = find('#uploaded-file')
    attach_file = find('#new-image')
    expect(attach_name_file.text).to eql 'image_1.png'
    expect(attach_file[:src]).to include '/uploads/image_1.png'
  end

  after(:each) do
    sleep 0.5
  end
end
