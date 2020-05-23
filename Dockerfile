FROM crosscompass/ihaskell-notebook

USER root
RUN mkdir /home/$NB_USER/notebook
COPY notebook/*.ipynb /home/$NB_USER/notebook/
RUN chown --recursive $NB_UID:users /home/$NB_USER/notebook

USER $NB_UID

ENV JUPYTER_ENABLE_LAB=yes
