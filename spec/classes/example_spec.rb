require 'spec_helper'

describe 'slurm' do
  let(:title) { 'slurm' }

  ['Debian', 'RedHat'].each do |osfamily|
    describe "slurm class without any parameters on #{osfamily}" do 
      let(:params) {{ }}
      let(:facts) { { :osfamily => osfamily } }

      it { should create_class('slurm') }
      it { should create_package('slurm') }
      it { should create_file('/etc/slurm.conf') }
      it {
        should create_file('/etc/slurm.conf')\
        .with_content(/^server pool.slurm.org$/)
      }
      if osfamily == 'RedHat' 
        it { should create_service('slurmd') }
      else
        it { should create_service('slurm') }
      end
    end
  end
end
