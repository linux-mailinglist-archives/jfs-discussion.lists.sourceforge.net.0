Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id A62AB73FD02
	for <lists+jfs-discussion@lfdr.de>; Tue, 27 Jun 2023 15:41:28 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1qE8wO-0004EI-Oc;
	Tue, 27 Jun 2023 13:41:08 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <smfrench@gmail.com>) id 1qDwug-0002ho-9A
 for jfs-discussion@lists.sourceforge.net;
 Tue, 27 Jun 2023 00:50:35 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Cc:To:Subject:Message-ID:Date:From:
 In-Reply-To:References:MIME-Version:Sender:Reply-To:Content-Transfer-Encoding
 :Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=DsMB3imFsyhRqXeqAj/4BSpn+zfdB5J4hsz4YJspCcQ=; b=jNels770gJTdeq5DFxlpbwRoGu
 wf7KyvZhp/k/QTXr5w6g90BDAluoHwvEgj6PZ7MuH2ZBawjtN60T06UkmAzjXy+IdsYQ9B02X5DpH
 yXpDRCDp0D4Y4NZwlNFbsfUTHokbOo1Ebghar2zi3df0sQjZG5Oar57mksmTf7ib3zrc=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:References:
 MIME-Version:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=DsMB3imFsyhRqXeqAj/4BSpn+zfdB5J4hsz4YJspCcQ=; b=Kxa4Bgq13ydtbvrmUIxVz0mFrL
 CcEhIAduY44IfJi+mFw94x8+9fuVpApSh7Xbk7CG1z04AV5ewIQki0zUHuzM7P0XlQSc+l5T7UXYL
 fYrsPaSJGOuIClhVp9MEU/lVq3Nhb1zNNrfjOsyWkmhbs/MNX1dJvaqutDXAesc3QjL4=;
Received: from mail-lf1-f47.google.com ([209.85.167.47])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1qDwuf-00Fmju-Bb for jfs-discussion@lists.sourceforge.net;
 Tue, 27 Jun 2023 00:50:35 +0000
Received: by mail-lf1-f47.google.com with SMTP id
 2adb3069b0e04-4f86fbe5e4fso5124857e87.2
 for <jfs-discussion@lists.sourceforge.net>;
 Mon, 26 Jun 2023 17:50:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20221208; t=1687827027; x=1690419027;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:from:to:cc:subject:date:message-id:reply-to;
 bh=DsMB3imFsyhRqXeqAj/4BSpn+zfdB5J4hsz4YJspCcQ=;
 b=lcebAABnmGabyUg9WzcUjvVUMXgQZUHbqRu1pBhXLpQTlbcQeSWRVBdW/qo/pMcSTK
 g/pB1a4eQwqPSH4nUebnV4K2anGRtQ8Dg8Z+ZQIAGGeTbE9HgPtBC+BZvVyMFH7KVlc9
 LklXAlmpYBN1Y/TLpeqe2iLZoj7jeDj3W2qMD6IMZToh7IjUrvflysAnM31kEt7oMHHA
 qmuh/g9zw32icA1EM/P0cZ8NBHzwgZUJRFTdrEOZaGnvQx2nQ9dJfK8jlk41ZD4nrfwk
 O3YctfwWsnKX46v/lEXhSDOGGyBc4YuL7Im3WLh786jLZZV9dm4vCRchdyCP0/HNB1C5
 FSgA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1687827027; x=1690419027;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=DsMB3imFsyhRqXeqAj/4BSpn+zfdB5J4hsz4YJspCcQ=;
 b=LrjD+ZIba7E/ZKem1Sg0I73EBumiQbWsyaMaR8O3FSyimd7JC382OhZPcjFHn67rpB
 MI08ydnIXKZvH16a3EXR0jrZpNxAM9atPJvFfVLyCqh1sVIqPw8P5EDsp9nU1X5NxU3i
 h2wIMmvVeG6gdmcw9pe2+tDN1PZcVanmQIMlHcXab3eP+R8dG04vK19VaN82myoOqibI
 JgKWH/Ekceux9UTDLMGBQY250kZlImeS2UgLLO9jDwHkoN3G9gz5dTneuR1VzVZI05Av
 d4jvytgF0HZMwotgq0uthIr1bipLa87umD8MUlzOkanSFEFBgblr2vKNNLM17TbqitTa
 aDpg==
X-Gm-Message-State: AC+VfDy4CYFuUi3ASFfWdWdIKU5SwOcut9xE6XMr78BTOLUkho+Qe4gc
 uegkw4an7DF++bq11gdxZe4IaoCN4tMYrKa024w=
X-Google-Smtp-Source: ACHHUZ65MubD6LtJPHuIxsf/9iHRqmAu+ts06TCyY21O2krtC6v7Rp53RtkkD4LnlGuvhW/73UtmvrVrWfNPA8BXHVI=
X-Received: by 2002:a19:7705:0:b0:4f9:56aa:26c5 with SMTP id
 s5-20020a197705000000b004f956aa26c5mr9926364lfc.25.1687827026393; Mon, 26 Jun
 2023 17:50:26 -0700 (PDT)
MIME-Version: 1.0
References: <ZJhPIYSUzBpuqosh@gallifrey>
 <25821273-d391-1502-ff8a-07ea7a59c8f3@oracle.com>
 <CAH2r5mvwZnd+S8CmZGQSdtnAWD45YjFx-1j0EaFBR3Qn-SjHEA@mail.gmail.com>
 <ZJov5VNakxNXU0Mk@gallifrey>
In-Reply-To: <ZJov5VNakxNXU0Mk@gallifrey>
From: Steve French <smfrench@gmail.com>
Date: Mon, 26 Jun 2023 19:50:15 -0500
Message-ID: <CAH2r5mvEWeSOM=NYrxSG1EZ1py-DSkOrwEyh+_L-KuFLVWktQw@mail.gmail.com>
To: "Dr. David Alan Gilbert" <linux@treblig.org>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software, running on the system "util-spamd-1.v13.lw.sourceforge.com",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  On Mon, Jun 26, 2023 at 7:40 PM Dr. David Alan Gilbert wrote:
    > * Steve French (smfrench@gmail.com) wrote: > > probably is low risk to
   make the ksmbd/cifs (server and client) code > common > > for this > > I'm
    up for trying to do that mod; do you have a feel of [...] 
 
 Content analysis details:   (-0.2 points, 6.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
  0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
                             provider
                             [smfrench[at]gmail.com]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
                              no trust
                             [209.85.167.47 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
                             [209.85.167.47 listed in wl.mailspike.net]
  0.0 HTML_MESSAGE           BODY: HTML included in message
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
                             author's domain
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
                             valid
X-Headers-End: 1qDwuf-00Fmju-Bb
X-Mailman-Approved-At: Tue, 27 Jun 2023 13:41:08 +0000
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
 linux-kernel@vger.kernel.org, sfrench@samba.org, linkinjeon@kernel.org
Content-Type: multipart/mixed; boundary="===============7412441852397555581=="
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

--===============7412441852397555581==
Content-Type: multipart/alternative; boundary="00000000000059c0f405ff11da07"

--00000000000059c0f405ff11da07
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Mon, Jun 26, 2023 at 7:40=E2=80=AFPM Dr. David Alan Gilbert <linux@trebl=
ig.org>
wrote:

> * Steve French (smfrench@gmail.com) wrote:
> > probably is low risk to make the ksmbd/cifs (server and client) code
> common
> > for this
>
> I'm up for trying to do that mod; do you have a feel of the best way?
> I guess this is two copies to avoid symbol clashes if both the server
> and clients are built/loaded on the same kernel?
>

First step would be to move common Unicode/UCS-2 header definitions from
fs/smb/client
and fs/smb/server to fs/smb/common

Second stuff could be having a common helper module in fs/smb/common
similar to
fs/smb/common/cifs_md4.ko



> I guess the clean way is to make this a separate .c/module that the
> others depend on and hten you have a nice single copy in the binary
> as well as the source.
>
> The shorter hack that at least avoids the source dupe would be to
> change the declarations in the uniupr.h files to a #define that then
> instantiates it with different names in the place those are #included.
> You'd want to move the uniupr.h up somewhere, to hmm fs/uniupr.h ?
>
> (Incidentally, I think the UNIUPR_NOLOWER is always defined
> so that whole chunk can go in both of them).
>
> I guess the next level would be trying to merge parts of server/client
> unicode.[ch] - but I was just eyeing up this particularly simple dupe in
> that odd uniupr.h.
>
> > (and leave the JFS code alone as Dave Kleikamp suggests)
>
> Well hmm; my reading is the tables that JFS uses are *identical*
> to these; so if this header was somewhere outside of fs/smb it could
> probably #include it and just use the same table, with a
> no-binary-change.
>
> Dave
>
> > On Mon, Jun 26, 2023 at 12:03=E2=80=AFPM Dave Kleikamp <dave.kleikamp@o=
racle.com
> >
> > wrote:
> >
> > > On 6/25/23 9:28AM, Dr. David Alan Gilbert wrote:
> > > > Hi All,
> > > >    I just tripped over three sets of duplicated unicode tables and
> > > > wondered if anyone had tried to rationalise them:
> > > >
> > > >    The pair of:
> > > >     ./fs/smb/server/uniupr.h
> > > >     ./fs/smb/client/cifs_uniupr.h
> > > >
> > > >     are identical except for formatting.
> > > >
> > > > ./fs/jfs/jfs_uniupr.c,
> > > >    and I think this is the same with some change in variable name.
> > >
> > >  From JFS's point of view, I wonder how relevant any of this code is.
> > > The Linux port of JFS originally was interested in compatibility with
> > > OS/2, which had case-insensitive file names. (Case-preserving, if I
> > > remember correctly, but names would match in a case-insensitive
> manner.)
> > >
> > > I would be surprised if anyone cares about this feature anymore.
> Without
> > > a JFS_OS2 flag set in the superblock, none of the case-conversion cod=
e
> > > comes into play.
> > >
> > > I assume SMB cares more about this and if Steve has an opinion on how
> to
> > > address this, I'd be happy to follow his lead. Probably better than
> > > ripping function out of JFS that could break some user that I'm not
> > > aware of.
> > >
> > > Shaggy
> > >
> > > >
> > > > (I'm guessing the same thing is implemented in a bunch of
> > > > other places as well in a different way)
> > > >
> > > > Would it make sense to swing fs/smb/server/uniupr.h up to
> > > > hmm, maybe fs/uniupr.h, remove any of the cifs_ prefixes
> > > > and then use the same include in all 3 places?
> > > >
> > > > Maybe then later look at using some of the nls code?
> > > >
> > > > Dave (who just tripped over this stuff)
> > > >
> > >
> >
> >
> > --
> > Thanks,
> >
> > Steve
> --
>  -----Open up your eyes, open up your mind, open up your code -------
> / Dr. David Alan Gilbert    |       Running GNU/Linux       | Happy  \
> \        dave @ treblig.org |                               | In Hex /
>  \ _________________________|_____ http://www.treblig.org   |_______/
>


--=20
Thanks,

Steve

--00000000000059c0f405ff11da07
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><br></div><br><div class=3D"gmail_quote">=
<div dir=3D"ltr" class=3D"gmail_attr">On Mon, Jun 26, 2023 at 7:40=E2=80=AF=
PM Dr. David Alan Gilbert &lt;<a href=3D"mailto:linux@treblig.org">linux@tr=
eblig.org</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=
=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding=
-left:1ex">* Steve French (<a href=3D"mailto:smfrench@gmail.com" target=3D"=
_blank">smfrench@gmail.com</a>) wrote:<br>
&gt; probably is low risk to make the ksmbd/cifs (server and client) code c=
ommon<br>
&gt; for this<br>
<br>
I&#39;m up for trying to do that mod; do you have a feel of the best way?<b=
r>
I guess this is two copies to avoid symbol clashes if both the server<br>
and clients are built/loaded on the same kernel?<br></blockquote><div><br><=
/div><div>First step would be to move common Unicode/UCS-2 header definitio=
ns from fs/smb/client</div><div>and fs/smb/server to fs/smb/common</div><di=
v><br></div><div>Second stuff could be having a common helper module in fs/=
smb/common similar to</div><div>fs/smb/common/cifs_md4.ko</div><div><br></d=
iv><div>=C2=A0<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0=
px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">
I guess the clean way is to make this a separate .c/module that the<br>
others depend on and hten you have a nice single copy in the binary<br>
as well as the source.<br>
<br>
The shorter hack that at least avoids the source dupe would be to<br>
change the declarations in the uniupr.h files to a #define that then<br>
instantiates it with different names in the place those are #included.<br>
You&#39;d want to move the uniupr.h up somewhere, to hmm fs/uniupr.h ?<br>
<br>
(Incidentally, I think the UNIUPR_NOLOWER is always defined<br>
so that whole chunk can go in both of them).<br>
<br>
I guess the next level would be trying to merge parts of server/client<br>
unicode.[ch] - but I was just eyeing up this particularly simple dupe in<br=
>
that odd uniupr.h.<br>
<br>
&gt; (and leave the JFS code alone as Dave Kleikamp suggests)<br>
<br>
Well hmm; my reading is the tables that JFS uses are *identical*<br>
to these; so if this header was somewhere outside of fs/smb it could<br>
probably #include it and just use the same table, with a<br>
no-binary-change.<br>
<br>
Dave<br>
<br>
&gt; On Mon, Jun 26, 2023 at 12:03=E2=80=AFPM Dave Kleikamp &lt;<a href=3D"=
mailto:dave.kleikamp@oracle.com" target=3D"_blank">dave.kleikamp@oracle.com=
</a>&gt;<br>
&gt; wrote:<br>
&gt; <br>
&gt; &gt; On 6/25/23 9:28AM, Dr. David Alan Gilbert wrote:<br>
&gt; &gt; &gt; Hi All,<br>
&gt; &gt; &gt;=C2=A0 =C2=A0 I just tripped over three sets of duplicated un=
icode tables and<br>
&gt; &gt; &gt; wondered if anyone had tried to rationalise them:<br>
&gt; &gt; &gt;<br>
&gt; &gt; &gt;=C2=A0 =C2=A0 The pair of:<br>
&gt; &gt; &gt;=C2=A0 =C2=A0 =C2=A0./fs/smb/server/uniupr.h<br>
&gt; &gt; &gt;=C2=A0 =C2=A0 =C2=A0./fs/smb/client/cifs_uniupr.h<br>
&gt; &gt; &gt;<br>
&gt; &gt; &gt;=C2=A0 =C2=A0 =C2=A0are identical except for formatting.<br>
&gt; &gt; &gt;<br>
&gt; &gt; &gt; ./fs/jfs/jfs_uniupr.c,<br>
&gt; &gt; &gt;=C2=A0 =C2=A0 and I think this is the same with some change i=
n variable name.<br>
&gt; &gt;<br>
&gt; &gt;=C2=A0 From JFS&#39;s point of view, I wonder how relevant any of =
this code is.<br>
&gt; &gt; The Linux port of JFS originally was interested in compatibility =
with<br>
&gt; &gt; OS/2, which had case-insensitive file names. (Case-preserving, if=
 I<br>
&gt; &gt; remember correctly, but names would match in a case-insensitive m=
anner.)<br>
&gt; &gt;<br>
&gt; &gt; I would be surprised if anyone cares about this feature anymore. =
Without<br>
&gt; &gt; a JFS_OS2 flag set in the superblock, none of the case-conversion=
 code<br>
&gt; &gt; comes into play.<br>
&gt; &gt;<br>
&gt; &gt; I assume SMB cares more about this and if Steve has an opinion on=
 how to<br>
&gt; &gt; address this, I&#39;d be happy to follow his lead. Probably bette=
r than<br>
&gt; &gt; ripping function out of JFS that could break some user that I&#39=
;m not<br>
&gt; &gt; aware of.<br>
&gt; &gt;<br>
&gt; &gt; Shaggy<br>
&gt; &gt;<br>
&gt; &gt; &gt;<br>
&gt; &gt; &gt; (I&#39;m guessing the same thing is implemented in a bunch o=
f<br>
&gt; &gt; &gt; other places as well in a different way)<br>
&gt; &gt; &gt;<br>
&gt; &gt; &gt; Would it make sense to swing fs/smb/server/uniupr.h up to<br=
>
&gt; &gt; &gt; hmm, maybe fs/uniupr.h, remove any of the cifs_ prefixes<br>
&gt; &gt; &gt; and then use the same include in all 3 places?<br>
&gt; &gt; &gt;<br>
&gt; &gt; &gt; Maybe then later look at using some of the nls code?<br>
&gt; &gt; &gt;<br>
&gt; &gt; &gt; Dave (who just tripped over this stuff)<br>
&gt; &gt; &gt;<br>
&gt; &gt;<br>
&gt; <br>
&gt; <br>
&gt; -- <br>
&gt; Thanks,<br>
&gt; <br>
&gt; Steve<br>
-- <br>
=C2=A0-----Open up your eyes, open up your mind, open up your code -------=
=C2=A0 =C2=A0<br>
/ Dr. David Alan Gilbert=C2=A0 =C2=A0 |=C2=A0 =C2=A0 =C2=A0 =C2=A0Running G=
NU/Linux=C2=A0 =C2=A0 =C2=A0 =C2=A0| Happy=C2=A0 \ <br>
\=C2=A0 =C2=A0 =C2=A0 =C2=A0 dave @ <a href=3D"http://treblig.org" rel=3D"n=
oreferrer" target=3D"_blank">treblig.org</a> |=C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0| In Hex /<br>
=C2=A0\ _________________________|_____ <a href=3D"http://www.treblig.org" =
rel=3D"noreferrer" target=3D"_blank">http://www.treblig.org</a>=C2=A0 =C2=
=A0|_______/<br>
</blockquote></div><br clear=3D"all"><div><br></div><span class=3D"gmail_si=
gnature_prefix">-- </span><br><div dir=3D"ltr" class=3D"gmail_signature">Th=
anks,<br><br>Steve</div></div>

--00000000000059c0f405ff11da07--


--===============7412441852397555581==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline


--===============7412441852397555581==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion

--===============7412441852397555581==--

