import numpy as np
import sympy as sy
import math
import matplotlib.pyplot as plt


def plot_circle_dia(Voc,Ioc,Woc,Vsc,Isc,Wsc,Rating,Rotor_to_stator_loss_ratio,Scale):
    iocs = Ioc/Scale
    iscs = Isc/Scale
    

    
    
    isn = Isc * (Voc/Vsc)
    isns = isn/Scale
    rotor = Rotor_to_stator_loss_ratio

    npf = Woc/(math.sqrt(3)*Voc*Ioc)
    npfangle = math.acos(npf) #it is in radians

    px = iocs*math.sin(npfangle)
    py = iocs*math.cos(npfangle)


    lpf = math.acos(Wsc/(math.sqrt(3)*Vsc*Isc))
    
    qx = isns*math.sin(lpf)
    qy = isns*math.cos(lpf)

    m = (qy-py)/(qx-px)
    xsemi = (px**2 - py**2 - qx**2 - qy**2 +2*py*qy )/(2*(px-qx))
    r = xsemi - px

    the = []


    for x in np.arange(0,np.pi,np.pi/777):  #msd
        the.append(x)

    costhe = np.cos(the)
    sinthe = np.sin(the)

    lpf = math.acos(Wsc/(math.sqrt(3)*Vsc*Isc))

    
    aa = np.multiply(r,costhe)
    bb = np.multiply(r,sinthe)
    
    a = [i+xsemi for i in aa]
    b = [j + py for j in bb]


    fig, ax = plt.subplots()
    l0=ax.plot(a,b,label='Circle')
    l1=ax.plot([0,px],[0,py],label = 'No load Current')
    l2=ax.plot([px,qx],[py,qy],label='Output line')
    l3=ax.plot([px,2*xsemi],[py,py],label='No load Losses')
    l4=ax.plot([qx,qx],[0,qy],label='Losses')
    ax.axhline(y=0, color='k')
    ax.axvline(x=0, color='k')

    rmath = (rotor * py + qy)/(rotor + 1)
    l5=ax.plot([px,qx],[py,rmath],label='Torque Line')

    wsn = Wsc*isn*isn/(Isc*Isc)
    powerscale = wsn / qy
    qe = Rating/powerscale
    ey = qy + qe

    ax.plot([qx,qx],[qy,ey],label='_nolegend_')
    ax.plot([px,qx],[py+qe,ey],'--',label='_nolegend_')
    
    k1 = (qy+ qe - m*qx);
    k2 = (2*m*(k1 - py)-2*xsemi)/(1+m*m)
    k3 = (xsemi*xsemi + (k1 - py)*(k1 - py) - r*r)/(1+m*m)

    cex = (-k2 - math.sqrt(k2*k2 - 4*k3))/2
    cey = (m* cex + k1)

    l6=ax.plot([0,cex],[0,cey],label='Full Load Current')

    ocex = cex 
    ocey = m * cex - m*qx + qy


    #max output
    k4 = (px+qx+m*py+m*qy)/(2*m)
    k5 = (2*m*py - 2*m*m*xsemi - 2*m*k4)/(m*m+1)
    k6 = (m*m*xsemi*xsemi + m*m*(py - k4)*(py - k4) - m*m*r*r)/(m*m +1)
    mox = (-k5-math.sqrt(k5*k5 -4*k6))/2
    moy = (-mox/m )+k4
    moox = mox
    mooy = m*mox - m*qx + qy

    l7=ax.plot([mox,moox],[moy,mooy],label='Max output')

    
#max torque

    rsx = qx
    n = (rmath - py)/(rsx - px)
    k7 = (px + rsx + n*py + n*rmath)/(2*n) 
    k8 = (2*n*py - 2*n*k7 - 2*n*n*xsemi)/(n*n +1)
    k9 = (n*n*xsemi*xsemi + n*n*(py - k7)*(py - k7) - n*n*r*r)/(n*n +1)
    tox = (-k8-(math.sqrt((k8*k8 -4*k9))))/2
    toy = (-tox/n )+k7
    toox = tox
    tooy = n*tox + (py + rmath - n*px - n*rsx)/2 
    maths = n*cex-n*px+py
    ba = ocey-maths
    fldslp = ba/(cey-maths)

    l8=ax.plot([tox,toox],[toy,tooy],label='Max torque')


    maxt = (toy - tooy)*powerscale
    moxo = (moy - mooy)*powerscale
    fulli = (math.sqrt(cex*cex + cey*cey))*Scale
    maxi = (r+iocs*math.cos(npfangle))*powerscale
    efficency = ((cey-ocey)/cey) *100
    powerfactor = cey/(math.sqrt(cex**2 + cey**2))
    startingtorque = (qy-rmath)*powerscale
    torqueFullLoad = (cey-iocs*math.cos(npfangle))*powerscale

    h, l = ax.get_legend_handles_labels()

    fig.suptitle('Circle Diagram', fontsize=18)
    plt.xlabel('Current I', fontsize=14)
    plt.ylabel('Voltage V', fontsize=14)
    fig.legend([h[0],h[1],h[2],h[3],h[4],h[5],h[6],h[7],h[8]], [l[0], l[1],l[2],l[3],l[4],l[5],l[6],l[7],l[8]], loc=1)

    plt.show()

    res = [maxt,moxo,fulli,maxi,efficency,powerfactor,startingtorque,torqueFullLoad]
    return res
