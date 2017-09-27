class PazarYeri
  @@instance=nil
  
  def self.instance
    @@instance||=PazarYeri.send(:new)
    
  end
  def fis_uret
    Sade.new
  end
  def cek_uret
    Dere.new  
    
  end
  private_class_method :new

end
aa=PazarYeri.instance
as=PazarYeri.instance
p aa==as
PazarYeri.new
