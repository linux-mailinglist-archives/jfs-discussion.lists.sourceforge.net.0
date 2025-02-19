Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id B3CC5A3C23B
	for <lists+jfs-discussion@lfdr.de>; Wed, 19 Feb 2025 15:34:32 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1tkl8s-0003cB-Ez;
	Wed, 19 Feb 2025 14:33:38 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <rand.sec96@gmail.com>) id 1tkhyt-0001Xk-RT
 for jfs-discussion@lists.sourceforge.net;
 Wed, 19 Feb 2025 11:11:08 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Cc:To:Subject:Message-ID:Date:From:
 In-Reply-To:References:MIME-Version:Sender:Reply-To:Content-Transfer-Encoding
 :Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=qVDjTeKPSrgLV6CBFXq4esF3X46xkB5j/4IJhWCiOKs=; b=fgnaxFhgpcOSIIAUps63Xyz3U2
 cKn7/WCPExs5kZLONySxzmvbrwGDi8vRRdgfGSGR/GMe1/CoZpsg8ciYGeCQ0ipTS15U4na7TByTn
 x843883cwCYO1LMSlOIQqPw1HOQm15cFVaeZInGuEkuypvznl7n2ZO90nfvsU51hGObk=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:References:
 MIME-Version:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=qVDjTeKPSrgLV6CBFXq4esF3X46xkB5j/4IJhWCiOKs=; b=bLBgH0p/zLLGms/Bb/6qHFM1hQ
 b/9X5AYYwG4r25oWBkZya0Dd3FfHmmzzHDs5CuDUjfzA33EWxfMZf7e02+ge+GV34BfULUUs7faOU
 1oB+1LwZ5x/+gR6P2IoyqOoWKJdgp5CRTsVsqWBRbvvygoFN7+RvgtiUdYFtzk9FOPIM=;
Received: from mail-lj1-f169.google.com ([209.85.208.169])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1tkhys-0000I0-97 for jfs-discussion@lists.sourceforge.net;
 Wed, 19 Feb 2025 11:11:08 +0000
Received: by mail-lj1-f169.google.com with SMTP id
 38308e7fff4ca-30613802a6bso67886671fa.1
 for <jfs-discussion@lists.sourceforge.net>;
 Wed, 19 Feb 2025 03:11:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1739963459; x=1740568259; darn=lists.sourceforge.net;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:from:to:cc:subject:date:message-id:reply-to;
 bh=qVDjTeKPSrgLV6CBFXq4esF3X46xkB5j/4IJhWCiOKs=;
 b=UJgCLf4u81DxvNXVLqLB6mnA0r+kO3BAI/5ss3aqBiOMDd393+2mvUyGb/3K4doPw9
 IBpd18Ozk7JLl5npgN5/jWw+SJcQzyqBKwr3FNWhT7sru1p+YkBt+MVe2SgZYl0gAlzg
 9RspzSMzpCMLtEkDW0fTkjhddb74jRbmlTVIEq6bIOd21Ro7T16xnc9A7ceB69JTkJwY
 /y4KXl6ubpRKI+gCScauGli0beUmW8DgM4c7x6mDFHXp1plrNK1vMkLkUP0olqxeF8ql
 WN2WFmwNXFWv+0Jl3miifgSl+bm2vNHeRv8F9X9tOxNuDl5w8mTJFbiJxy6+d8dEfdLx
 y56Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1739963459; x=1740568259;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=qVDjTeKPSrgLV6CBFXq4esF3X46xkB5j/4IJhWCiOKs=;
 b=dljeY9TgAQLRWueDg3+Wxjhi5jDKYaO4WPHpDXCPMU9Vk/z+htQDcD1wQcQjwTttnF
 i9mpPfUV9e3q6ugsEgCs/vgqCHJO9T3+BBqz9LZWW+VAP7MjWew9H0pO2SYg0l676vVs
 +pCH/zpN9QKtADBJyUuFx+PP/JEMJ+mc2FUmG97kW/GEF10JSI/HabbO2qJAS+GnOy50
 3Y+pPsHXgx4OpZFXX+18oF0pKnO71bV9NcXJMtxL1YUZ4y3+BX1FUBgm6N79rHq65AbT
 kCOUI6T+kd21No3TNSj6xuh/q8uB1eOD1gAFRIfMPElwrMUvlsaWmPwQ2jMFOtZp7j8S
 REzA==
X-Forwarded-Encrypted: i=1;
 AJvYcCX/HNIub6W1WgN7R2g5iy3JxnvBNCyLvGNSN1YHzpCSkxlmUiKwvy28zcvNvGvW2r8Y39nCQPPqHirkVyj6Bg==@lists.sourceforge.net
X-Gm-Message-State: AOJu0Yw0hj1V8X/WeXBBxYSHimE65uOc8iqpUNtAwUl/pjMk2Cu75FpC
 Ebgo6Qf/GLM02e2nBggJIIPbA8qZOUpWwrlshE5ChZGFeJwEGh0pVVdWwGNYYFYBTrdjLSaAqTz
 lpE5jDjucVkaEeXZAVXbBBmsIrT0=
X-Gm-Gg: ASbGncumy01FxotYnLYAGSncHOtwISPUchKPGnyHqu+tG18hI8UdiPTm2hXbX9A4MBT
 paAQT7ikJxews/JwGH8l+x/1kIDkFZmoTlryb6Yl+c53VdmjmQm2p+iSuGHKozMdHVeJrJY6f
X-Google-Smtp-Source: AGHT+IGPdbT1FUhWLShXu9y6bEn0nZ+Dl52WjMFKDv00y8OXZUnkHlA/aJh1SY+67OrsBvIPnR+7EJctCDwgynRxBcg=
X-Received: by 2002:a2e:b60d:0:b0:308:ec6f:7034 with SMTP id
 38308e7fff4ca-30927a47407mr46424241fa.9.1739963459105; Wed, 19 Feb 2025
 03:10:59 -0800 (PST)
MIME-Version: 1.0
References: <20250219072504.1655151-1-rand.sec96@gmail.com>
 <v3rsldvzq4ujgcxamjwcmmfm62wgdgjscg25c6t6xph3itjedp@sbuayguprw2i>
In-Reply-To: <v3rsldvzq4ujgcxamjwcmmfm62wgdgjscg25c6t6xph3itjedp@sbuayguprw2i>
Date: Wed, 19 Feb 2025 14:10:46 +0300
X-Gm-Features: AWEUYZlF3M3-8HtjkZ4GJ7ihh9NfgASz6rmLA4wuoE8p7OK2YkX4JqUjxTlTysc
Message-ID: <CAN8dotnkd-fSQurTFAf_8z3K1yRNj5SVJ4qYc3Tq7cVZLq02qA@mail.gmail.com>
To: Fedor Pchelkin <pchelkin@ispras.ru>
X-Spam-Score: 0.1 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Wed, Feb 19, 2025, 1:38 PM Fedor Pchelkin wrote: > Hi,
 > > On Wed, 19. Feb 10:25, Rand Deeb wrote: > > The expression "inactags <<
 bmp->db_agl2size" in the function > > dbFinalizeBmap() is computed using
 int operands. Although the > > values (inacta [...] 
 Content analysis details:   (0.1 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 RCVD_IN_VALIDITY_SAFE_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [209.85.208.169 listed in sa-accredit.habeas.com]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [rand.sec96[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [rand.sec96[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.208.169 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.208.169 listed in list.dnswl.org]
 0.0 HTML_MESSAGE           BODY: HTML included in message
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.0 RCVD_IN_VALIDITY_RPBL_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [209.85.208.169 listed in bl.score.senderscore.com]
X-Headers-End: 1tkhys-0000I0-97
X-Mailman-Approved-At: Wed, 19 Feb 2025 14:33:34 +0000
Subject: Re: [Jfs-discussion] [PATCH 5.10.y] fs/jfs: cast inactags to s64 to
 prevent potential overflow
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
From: Rand Deeb via Jfs-discussion <jfs-discussion@lists.sourceforge.net>
Reply-To: Rand Deeb <rand.sec96@gmail.com>
Cc: voskresenski.stanislav@confident.ru, Dave Kleikamp <shaggy@kernel.org>,
 jfs-discussion@lists.sourceforge.net, lvc-project@linuxtesting.org,
 linux-kernel@vger.kernel.org, Rand Deeb <deeb.rand@confident.ru>
Content-Type: multipart/mixed; boundary="===============3465914680791062704=="
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

--===============3465914680791062704==
Content-Type: multipart/alternative; boundary="000000000000e6fdb0062e7ccf23"

--000000000000e6fdb0062e7ccf23
Content-Type: text/plain; charset="UTF-8"

On Wed, Feb 19, 2025, 1:38 PM Fedor Pchelkin <pchelkin@ispras.ru> wrote:

> Hi,
>
> On Wed, 19. Feb 10:25, Rand Deeb wrote:
> > The expression "inactags << bmp->db_agl2size" in the function
> > dbFinalizeBmap() is computed using int operands. Although the
> > values (inactags and db_agl2size) are derived from filesystem
> > parameters and are usually small, there is a theoretical risk that
> > the shift could overflow a 32-bit int if extreme values occur.
> >
> > According to the C standard, shifting a signed 32-bit int can lead
> > to undefined behavior if the result exceeds its range. In our
> > case, an overflow could miscalculate free blocks, potentially
> > leading to erroneous filesystem accounting.
> >
> > To ensure the arithmetic is performed in 64-bit space, we cast
> > "inactags" to s64 before shifting. This defensive fix prevents any
> > risk of overflow and complies with kernel coding best practices.
> >
> > Found by Linux Verification Center (linuxtesting.org) with SVACE.
> >
> > Signed-off-by: Rand Deeb <rand.sec96@gmail.com>
> > ---
>
> Why is the patch targeted only to 5.10.y? It should go to the mainline
> first, no?
>
> Please check
> https://www.kernel.org/doc/html/latest/process/stable-kernel-rules.html
>
> >  fs/jfs/jfs_dmap.c | 4 ++--
> >  1 file changed, 2 insertions(+), 2 deletions(-)
> >
> > diff --git a/fs/jfs/jfs_dmap.c b/fs/jfs/jfs_dmap.c
> > index eedea23d70ff..3cc10f9bf9f8 100644
> > --- a/fs/jfs/jfs_dmap.c
> > +++ b/fs/jfs/jfs_dmap.c
> > @@ -3728,8 +3728,8 @@ void dbFinalizeBmap(struct inode *ipbmap)
> >        * system size is not a multiple of the group size).
> >        */
> >       inactfree = (inactags && ag_rem) ?
> > -         ((inactags - 1) << bmp->db_agl2size) + ag_rem
> > -         : inactags << bmp->db_agl2size;
> > +         (((s64)inactags - 1) << bmp->db_agl2size) + ag_rem
> > +         : ((s64)inactags << bmp->db_agl2size);
> >
> >       /* determine how many free blocks are in the active
> >        * allocation groups plus the average number of free blocks
> > --
> > 2.34.1
>

Hey Fedor,

I focused on 5.10 and added it to the subject to avoid confusion,
since files differ across versions. But yes, all versions have the issue.
In one of my past patches, maintainers couldn't apply it due to kernel
version differences, which led to confusion. So I thought specifying
the version upfront would help. My bad, I should have noted it after
the commit message instead.

I'll take this into account in future patches. Should I send another
patch specifically for the mainline version now?

Thanks for the feedback!

>

--000000000000e6fdb0062e7ccf23
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto"><div><br><br><div class=3D"gmail_quote gmail_quote_contai=
ner"><div dir=3D"ltr" class=3D"gmail_attr">On Wed, Feb 19, 2025, 1:38 PM Fe=
dor Pchelkin &lt;<a href=3D"mailto:pchelkin@ispras.ru">pchelkin@ispras.ru</=
a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0 =
0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">Hi,<br>
<br>
On Wed, 19. Feb 10:25, Rand Deeb wrote:<br>
&gt; The expression &quot;inactags &lt;&lt; bmp-&gt;db_agl2size&quot; in th=
e function<br>
&gt; dbFinalizeBmap() is computed using int operands. Although the<br>
&gt; values (inactags and db_agl2size) are derived from filesystem<br>
&gt; parameters and are usually small, there is a theoretical risk that<br>
&gt; the shift could overflow a 32-bit int if extreme values occur.<br>
&gt; <br>
&gt; According to the C standard, shifting a signed 32-bit int can lead<br>
&gt; to undefined behavior if the result exceeds its range. In our<br>
&gt; case, an overflow could miscalculate free blocks, potentially<br>
&gt; leading to erroneous filesystem accounting.<br>
&gt; <br>
&gt; To ensure the arithmetic is performed in 64-bit space, we cast<br>
&gt; &quot;inactags&quot; to s64 before shifting. This defensive fix preven=
ts any<br>
&gt; risk of overflow and complies with kernel coding best practices.<br>
&gt; <br>
&gt; Found by Linux Verification Center (<a href=3D"http://linuxtesting.org=
" rel=3D"noreferrer noreferrer" target=3D"_blank">linuxtesting.org</a>) wit=
h SVACE.<br>
&gt; <br>
&gt; Signed-off-by: Rand Deeb &lt;<a href=3D"mailto:rand.sec96@gmail.com" t=
arget=3D"_blank" rel=3D"noreferrer">rand.sec96@gmail.com</a>&gt;<br>
&gt; ---<br>
<br>
Why is the patch targeted only to 5.10.y? It should go to the mainline<br>
first, no?<br>
<br>
Please check <a href=3D"https://www.kernel.org/doc/html/latest/process/stab=
le-kernel-rules.html" rel=3D"noreferrer noreferrer" target=3D"_blank">https=
://www.kernel.org/doc/html/latest/process/stable-kernel-rules.html</a><br>
<br>
&gt;=C2=A0 fs/jfs/jfs_dmap.c | 4 ++--<br>
&gt;=C2=A0 1 file changed, 2 insertions(+), 2 deletions(-)<br>
&gt; <br>
&gt; diff --git a/fs/jfs/jfs_dmap.c b/fs/jfs/jfs_dmap.c<br>
&gt; index eedea23d70ff..3cc10f9bf9f8 100644<br>
&gt; --- a/fs/jfs/jfs_dmap.c<br>
&gt; +++ b/fs/jfs/jfs_dmap.c<br>
&gt; @@ -3728,8 +3728,8 @@ void dbFinalizeBmap(struct inode *ipbmap)<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 * system size is not a multiple of the grou=
p size).<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 */<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0inactfree =3D (inactags &amp;&amp; ag_rem) ?=
<br>
&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0((inactags - 1) &lt;&lt; bmp-&gt;db=
_agl2size) + ag_rem<br>
&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0: inactags &lt;&lt; bmp-&gt;db_agl2=
size;<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0(((s64)inactags - 1) &lt;&lt; bmp-&=
gt;db_agl2size) + ag_rem<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0: ((s64)inactags &lt;&lt; bmp-&gt;d=
b_agl2size);<br>
&gt;=C2=A0 <br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0/* determine how many free blocks are in the=
 active<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 * allocation groups plus the average number=
 of free blocks<br>
&gt; -- <br>
&gt; 2.34.1<br></blockquote></div></div><div dir=3D"auto"><br></div><div di=
r=3D"auto"><div dir=3D"auto">Hey Fedor,=C2=A0=C2=A0</div><div dir=3D"auto">=
<br></div><div dir=3D"auto">I focused on 5.10 and added it to the subject t=
o avoid confusion,=C2=A0=C2=A0</div><div dir=3D"auto">since files differ ac=
ross versions. But yes, all versions have the issue.=C2=A0=C2=A0</div><div =
dir=3D"auto">In one of my past patches, maintainers couldn&#39;t apply it d=
ue to kernel=C2=A0=C2=A0</div><div dir=3D"auto">version differences, which =
led to confusion. So I thought specifying=C2=A0=C2=A0</div><div dir=3D"auto=
">the version upfront would help. My bad, I should have noted it after=C2=
=A0=C2=A0</div><div dir=3D"auto">the commit message instead.=C2=A0=C2=A0</d=
iv><div dir=3D"auto"><br></div><div dir=3D"auto">I&#39;ll take this into ac=
count in future patches. Should I send another=C2=A0=C2=A0</div><div dir=3D=
"auto">patch specifically for the mainline version now?=C2=A0=C2=A0</div><d=
iv dir=3D"auto"><br></div><div dir=3D"auto">Thanks for the feedback!</div><=
/div><div dir=3D"auto"><div class=3D"gmail_quote gmail_quote_container"><bl=
ockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #=
ccc solid;padding-left:1ex">
</blockquote></div></div></div>

--000000000000e6fdb0062e7ccf23--


--===============3465914680791062704==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline


--===============3465914680791062704==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion

--===============3465914680791062704==--

