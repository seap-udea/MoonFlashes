# MoonFlashes
Dynamical analysis of moon impacts

This is the data and scripts required to reproduce the results in the
paper:

> Zuluaga, J. I., Cuartas-Restrepo, P. A., Ospina, J., Pichardo, F.,
  Lopez, S. A., Pena, K., & Gaviria-Posada, J. M. (2019). Location,
  orbit and energy of a meteoroid impacting the moon during the Lunar
  Eclipse of January 21, 2019. arXiv preprint arXiv:1901.09573.

Clone:

```
	git clone https://github.com/seap-udea/MoonFlashes.git
```

Unpack data:

```
	cd MoonFlashes
	make unpack
```

Open, explore and run the ipython script `L1-21-J-Analysis.ipynb` to
reproduce all our results.

After unpacking all raw images are located in the directory
[`data/L1-21J`](https://github.com/seap-udea/MoonFlashes/tree/master/data/L1-21J).

GRT analysis were performed using
[GravRay](https://github.com/seap-udea/GravRay) (not included in this
repo.)  The data files produced by the GRT analysis at the site of the
impact are included in the `data/impact-data.tar` file.  Especially
important is the `rays-lat_-2.94288e+01__lon_-6.81674e+01.data.prob`
that contains the information about every single *ray* thrown from the
impact location and the corresponding GRT probability.

If you find inconsistencies, errors or problems at reproducing our
results do not hesitate at writing us to
[jorge.zuluaga@udea.edu.co](mailto:jorge.zuluaga@udea.edu.co).