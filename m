Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id BA3D873E7D1
	for <lists+jfs-discussion@lfdr.de>; Mon, 26 Jun 2023 20:19:17 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1qDqnj-0000cd-La;
	Mon, 26 Jun 2023 18:19:00 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <smfrench@gmail.com>) id 1qDqiR-0002LJ-SR
 for jfs-discussion@lists.sourceforge.net;
 Mon, 26 Jun 2023 18:13:31 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Cc:To:Subject:Message-ID:Date:From:
 In-Reply-To:References:MIME-Version:Sender:Reply-To:Content-Transfer-Encoding
 :Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=EqYyRMhaW0WRNcnqaBx0hNxYa3te/29bz/OZrzDMIf4=; b=UrynrFyfl28TUKJbFZk0oKFGUM
 hvPxGnDJrDgtCw5rVsQExVyNlIPnCccX3cPxCMRP/OvlIfs2NxtQQSeFHH6NQC2OXj6Xu9ap+Qsns
 NlFi3qY9zRFXfTQ5yNvR3VZtrG6y7YA3bMaCt9/SzpNpkaprdCvNQ7gmWAtclbNywO5o=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:References:
 MIME-Version:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=EqYyRMhaW0WRNcnqaBx0hNxYa3te/29bz/OZrzDMIf4=; b=i8rkx66dmcoQhn6uFwudfNYgYN
 QBKEzQb1tASLrchMCAEPEme/OpylmeVmajVtpLJb2IzkovHQRNl729cUCqNTJVVNzUkfrja0alrQ6
 kKUy7K0ROp2bKcDRj9HKKKMjW2ZzOaR9KL0fu8+IIBmWOM9KDy4PPTUiOQgJ7yekNKj4=;
Received: from mail-lj1-f176.google.com ([209.85.208.176])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1qDqiP-0004Dv-TY for jfs-discussion@lists.sourceforge.net;
 Mon, 26 Jun 2023 18:13:31 +0000
Received: by mail-lj1-f176.google.com with SMTP id
 38308e7fff4ca-2b6a6f224a1so11600551fa.1
 for <jfs-discussion@lists.sourceforge.net>;
 Mon, 26 Jun 2023 11:13:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20221208; t=1687803203; x=1690395203;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:from:to:cc:subject:date:message-id:reply-to;
 bh=EqYyRMhaW0WRNcnqaBx0hNxYa3te/29bz/OZrzDMIf4=;
 b=dv9k2vFwOzfxy07vl4OqNmjpqEIEb2qDY+WAkm/Wx35/Sk13CICz5twDN2Jmc3/4Mx
 IAjUz2FpnuQDLea0qiWA1+ZDMOomgBk0XLNwQmlFWQUzWkRsub/ttgiW1dA+0NktstE7
 q6GTwPDfO+gxRctFGZ6revrJtxFEKkirOUDusI77xxPO1+0ramGgZIBZbXdeegvDth9P
 ZaSk1KDvcP2lwlphNKQxBwdgnpgcWS1LPFhB3VLTV4HGcYxiDe1agJMeX86pgRqp5xgh
 BM1CUc1p+SlwFsWGzuAzfULAckbvMorSVeS8iI7mio2ysoXd7h9E8rta2J0/RSfdBr8R
 ijdQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1687803203; x=1690395203;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=EqYyRMhaW0WRNcnqaBx0hNxYa3te/29bz/OZrzDMIf4=;
 b=O28yVmg8oDGWTnp6XWSkpYg4xWOwh0c/ycr90fXSwa9pK7niVarc37VL6Ac0ayGR02
 /WfVrKXb3jq4zwUA2ZLlqvfMAvXvoxi4/HFiBpR0thzkKBA3gqF4SyA+vTIaqa4wM6o/
 UFx8E4kPIyz6yZrOTCj096OWoogQ0EwZiJvI98KFc3Kf0hYUAVw7AFtuG2+j25/UXKgv
 e+ooncozy2BlBy1e4NjyH8vj55AsOKEDjReiWtJQ95susvmyyq0OuQ+GKH0Phe+eYyXw
 mYF5kCAmKJjj7eqmnwEVWgncIGf56TnQdH5W2zstHLNxjkd/96RiFicYlT3hH65dCyR+
 aItw==
X-Gm-Message-State: AC+VfDyVIP9AJd+d+6ixe8/X95j1tZQfQ6Z4m5LswNYqCCG+Y5nUxg7o
 r08B91XzgVdR+fTgexGeG+dBO1PkVZD5TU26EKQn4EI6
X-Google-Smtp-Source: ACHHUZ79Touw6E7r3NbsZ80n0N8Tflk8R62CDipbkMQVrX3hgDXcvhodKydw0muPT28xqcUfsTSO0pzgeUctdDl/CRM=
X-Received: by 2002:a2e:8057:0:b0:2b5:7a97:d517 with SMTP id
 p23-20020a2e8057000000b002b57a97d517mr8120057ljg.46.1687803202769; Mon, 26
 Jun 2023 11:13:22 -0700 (PDT)
MIME-Version: 1.0
References: <ZJhPIYSUzBpuqosh@gallifrey>
 <25821273-d391-1502-ff8a-07ea7a59c8f3@oracle.com>
In-Reply-To: <25821273-d391-1502-ff8a-07ea7a59c8f3@oracle.com>
From: Steve French <smfrench@gmail.com>
Date: Mon, 26 Jun 2023 13:13:15 -0500
Message-ID: <CAH2r5mvwZnd+S8CmZGQSdtnAWD45YjFx-1j0EaFBR3Qn-SjHEA@mail.gmail.com>
To: Dave Kleikamp <dave.kleikamp@oracle.com>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software, running on the system "util-spamd-1.v13.lw.sourceforge.com",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  probably is low risk to make the ksmbd/cifs (server and client)
    code common for this (and leave the JFS code alone as Dave Kleikamp suggests)
    On Mon, Jun 26, 2023 at 12:03 PM Dave Kleikamp wrote: 
 
 Content analysis details:   (-0.2 points, 6.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
                              no trust
                             [209.85.208.176 listed in list.dnswl.org]
  0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
                             provider
                             [smfrench[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
                             [209.85.208.176 listed in wl.mailspike.net]
  0.0 HTML_MESSAGE           BODY: HTML included in message
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
                             author's domain
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
                             valid
X-Headers-End: 1qDqiP-0004Dv-TY
X-Mailman-Approved-At: Mon, 26 Jun 2023 18:18:59 +0000
Subject: Re: [Jfs-discussion] Duplicate unicode tables in smb/cifs/jfs
X-BeenThere: jfs-discussion@lists.sourceforge.net
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <jfs-discussion.lists.sourceforge.net>
List-Unsubscribe: <https://lists.sourceforge.net/lists/options/jfs-discussion>, 
 <mailto:jfs-discussion-request@lists.sourceforge.net?subject=unsubscribe>
List-Archive: <http://sourceforge.net/mailarchive/forum.php?forum_name=jfs-discussion>
List-Post: <mailto:jfs-discussion@lists.sourceforge.net>
List-Help: <mailto:jfs-discussion-request@lists.sourceforge.net?subject=help>
List-Subscribe: <https://lists.sourceforge.net/lists/listinfo/jfs-discussion>, 
 <mailto:jfs-discussion-request@lists.sourceforge.net?subject=subscribe>
Cc: linux-cifs@vger.kernel.org, jfs-discussion@lists.sourceforge.net,
 linux-kernel@vger.kernel.org, sfrench@samba.org,
 "Dr. David Alan Gilbert" <linux@treblig.org>, linkinjeon@kernel.org
Content-Type: multipart/mixed; boundary="===============6032194098916261972=="
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

--===============6032194098916261972==
Content-Type: multipart/alternative; boundary="0000000000005a176205ff0c4ebb"

--0000000000005a176205ff0c4ebb
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

probably is low risk to make the ksmbd/cifs (server and client) code common
for this (and leave the JFS code alone as Dave Kleikamp suggests)

On Mon, Jun 26, 2023 at 12:03=E2=80=AFPM Dave Kleikamp <dave.kleikamp@oracl=
e.com>
wrote:

> On 6/25/23 9:28AM, Dr. David Alan Gilbert wrote:
> > Hi All,
> >    I just tripped over three sets of duplicated unicode tables and
> > wondered if anyone had tried to rationalise them:
> >
> >    The pair of:
> >     ./fs/smb/server/uniupr.h
> >     ./fs/smb/client/cifs_uniupr.h
> >
> >     are identical except for formatting.
> >
> > ./fs/jfs/jfs_uniupr.c,
> >    and I think this is the same with some change in variable name.
>
>  From JFS's point of view, I wonder how relevant any of this code is.
> The Linux port of JFS originally was interested in compatibility with
> OS/2, which had case-insensitive file names. (Case-preserving, if I
> remember correctly, but names would match in a case-insensitive manner.)
>
> I would be surprised if anyone cares about this feature anymore. Without
> a JFS_OS2 flag set in the superblock, none of the case-conversion code
> comes into play.
>
> I assume SMB cares more about this and if Steve has an opinion on how to
> address this, I'd be happy to follow his lead. Probably better than
> ripping function out of JFS that could break some user that I'm not
> aware of.
>
> Shaggy
>
> >
> > (I'm guessing the same thing is implemented in a bunch of
> > other places as well in a different way)
> >
> > Would it make sense to swing fs/smb/server/uniupr.h up to
> > hmm, maybe fs/uniupr.h, remove any of the cifs_ prefixes
> > and then use the same include in all 3 places?
> >
> > Maybe then later look at using some of the nls code?
> >
> > Dave (who just tripped over this stuff)
> >
>


--=20
Thanks,

Steve

--0000000000005a176205ff0c4ebb
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">probably is low risk to make the ksmbd/cifs (server and cl=
ient) code common for this (and leave the JFS code alone as Dave Kleikamp s=
uggests)</div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmai=
l_attr">On Mon, Jun 26, 2023 at 12:03=E2=80=AFPM Dave Kleikamp &lt;<a href=
=3D"mailto:dave.kleikamp@oracle.com">dave.kleikamp@oracle.com</a>&gt; wrote=
:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.=
8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">On 6/25/23 9:2=
8AM, Dr. David Alan Gilbert wrote:<br>
&gt; Hi All,<br>
&gt;=C2=A0 =C2=A0 I just tripped over three sets of duplicated unicode tabl=
es and<br>
&gt; wondered if anyone had tried to rationalise them:<br>
&gt; <br>
&gt;=C2=A0 =C2=A0 The pair of:<br>
&gt;=C2=A0 =C2=A0 =C2=A0./fs/smb/server/uniupr.h<br>
&gt;=C2=A0 =C2=A0 =C2=A0./fs/smb/client/cifs_uniupr.h<br>
&gt; <br>
&gt;=C2=A0 =C2=A0 =C2=A0are identical except for formatting.<br>
&gt; <br>
&gt; ./fs/jfs/jfs_uniupr.c,<br>
&gt;=C2=A0 =C2=A0 and I think this is the same with some change in variable=
 name.<br>
<br>
=C2=A0From JFS&#39;s point of view, I wonder how relevant any of this code =
is. <br>
The Linux port of JFS originally was interested in compatibility with <br>
OS/2, which had case-insensitive file names. (Case-preserving, if I <br>
remember correctly, but names would match in a case-insensitive manner.)<br=
>
<br>
I would be surprised if anyone cares about this feature anymore. Without <b=
r>
a JFS_OS2 flag set in the superblock, none of the case-conversion code <br>
comes into play.<br>
<br>
I assume SMB cares more about this and if Steve has an opinion on how to <b=
r>
address this, I&#39;d be happy to follow his lead. Probably better than <br=
>
ripping function out of JFS that could break some user that I&#39;m not <br=
>
aware of.<br>
<br>
Shaggy<br>
<br>
&gt; <br>
&gt; (I&#39;m guessing the same thing is implemented in a bunch of<br>
&gt; other places as well in a different way)<br>
&gt; <br>
&gt; Would it make sense to swing fs/smb/server/uniupr.h up to<br>
&gt; hmm, maybe fs/uniupr.h, remove any of the cifs_ prefixes<br>
&gt; and then use the same include in all 3 places?<br>
&gt; <br>
&gt; Maybe then later look at using some of the nls code?<br>
&gt; <br>
&gt; Dave (who just tripped over this stuff)<br>
&gt; <br>
</blockquote></div><br clear=3D"all"><div><br></div><span class=3D"gmail_si=
gnature_prefix">-- </span><br><div dir=3D"ltr" class=3D"gmail_signature">Th=
anks,<br><br>Steve</div>

--0000000000005a176205ff0c4ebb--


--===============6032194098916261972==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline


--===============6032194098916261972==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion

--===============6032194098916261972==--

