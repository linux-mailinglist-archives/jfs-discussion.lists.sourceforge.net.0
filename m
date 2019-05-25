Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 2212B2B773
	for <lists+jfs-discussion@lfdr.de>; Mon, 27 May 2019 16:22:39 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1hVGVl-0007bh-G3; Mon, 27 May 2019 14:22:01 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <thevoice1017@lwbcast.net>) id 1hUZwA-00005Q-5Z
 for jfs-discussion@lists.sourceforge.net; Sat, 25 May 2019 16:54:26 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:To:Subject:Message-ID:Date:From:
 In-Reply-To:References:MIME-Version:Sender:Reply-To:Cc:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=y/NhMlX2No0RU2TL2/3OwniHIkkNQa7W2SCMN1w7rPY=; b=Jxvu/kPCsz3VIfrOdpDZKiEFH
 0wa9bad4DOpVoQj7mwBFavrYrRdUWPS9f/TrWASlDOTWrzPzK2WIcAramwKlhHuSc8X93yjx+ckKL
 /Y7Q1tgDy+UR0cZGC1AMzTfjTGE7iyBh8OQnuKeCsTnv7Jzj2MpB/eg9c7NL9w6kFFsSc=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:To:Subject:Message-ID:Date:From:In-Reply-To:References:
 MIME-Version:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=y/NhMlX2No0RU2TL2/3OwniHIkkNQa7W2SCMN1w7rPY=; b=I5eqKtqDFco5WKDROe3W8cv3OD
 xy44aeGxvprFnIqDi7gRaVYib7PT0Vsi3/h+bay0XwZgl5t3H3pdEdKlFiRDVGCXrCpaZgJoL97xb
 WGeli7Wi87uEazxT0zumKqBTqYd5dCiIQOJAYd1S5WNTba6862bGcPkaFitk43B8xiC4=;
Received: from mail-ed1-f47.google.com ([209.85.208.47])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.90_1)
 id 1hUZw6-00A2Wb-I3
 for jfs-discussion@lists.sourceforge.net; Sat, 25 May 2019 16:54:26 +0000
Received: by mail-ed1-f47.google.com with SMTP id m4so19309214edd.8
 for <jfs-discussion@lists.sourceforge.net>;
 Sat, 25 May 2019 09:54:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=lwbcast-net.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to;
 bh=y/NhMlX2No0RU2TL2/3OwniHIkkNQa7W2SCMN1w7rPY=;
 b=OyWjfSTbh9K+dKHqPkOF2IgHqQgf9oAfwYprFi+Tqj59EaNGC96XfFdE+L1XQtBhms
 NgzON0Rbz9UM5VRsXH7oXbVVTbwwQ7m6ZCSWA+1/kFxupgX2n/D3Wu/1Fc1WE6/qfAec
 ET2l7+pG3NSoGgp+6FgqIuGuBjyaVxqU5ZUFdgQXxYmX4l8qrX5XML78Zm4VTFuJq5q+
 IgFAJflzmnm52e1LOWLllqeuxKUxMPv+4YMHB2kmCjOjWaZuQqoh+Aha7blogR2SIw1Q
 MtJmAW3pTV6NzT3Yh41nodx06bxJXB+5uIOaO4DuoPDRz4EZliJ9y+b5JmwbueSq0jjX
 CfrQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to;
 bh=y/NhMlX2No0RU2TL2/3OwniHIkkNQa7W2SCMN1w7rPY=;
 b=tamp3lwvYadiwglBb+XholVM/RNFfpF5uRc4zjblbrO5maUAFPEwXNLAne0jeDH5vC
 IoJLpH0Gqa3ZEy4loaedw6RhtGqvPhorlH+5aEwAva9ERRVnstWmybtW7uynnz+glTVY
 Diu+duUEcJXLJ9O34a2seCsGwLBrUtUPWjOD9KhU+yc8bxYBrNGoVL1hkvD9RWw1b8Y5
 4d9yFH9YP7WxcEk9NSU/FyrTSFeO0oz4XXtw6jrUYfy8glPs7p1pqehbtE0/jv6xJENF
 BK3PDXYGTZn9oA4mByDkT9ToFCP2hOj0SU2ih8aCQUWAQYMcgGP4zdGXLCp80xqUNgcB
 bYFg==
X-Gm-Message-State: APjAAAXmv7C9BLZebFniraf9+L0dyjBbXrpReU+ph16VZSSlQuJygenP
 VVkry871a05t1mgVkFsHDq4HZx+gVYZ4/w67zxqvZXPK
X-Google-Smtp-Source: APXvYqx7zgWimWuTNqb0hQPh0XaWZAlfiYXIvuWkRmmv6knfrDQ3dt21LqPW+MwIMMPRK9V/KymhbX7jGH4LWFmvMMU=
X-Received: by 2002:aa7:c34f:: with SMTP id j15mr23328991edr.285.1558801338958; 
 Sat, 25 May 2019 09:22:18 -0700 (PDT)
MIME-Version: 1.0
References: <mailman.377.1558440724.19507.jfs-discussion@lists.sourceforge.net>
In-Reply-To: <mailman.377.1558440724.19507.jfs-discussion@lists.sourceforge.net>
From: Robert Wilson <thevoice1017@lwbcast.net>
Date: Sat, 25 May 2019 11:22:07 -0500
Message-ID: <CALPNbd2RfoYNec7s85KRgjM1zpOCkDrGxA1cuBQS9Oh2Oz5xXA@mail.gmail.com>
To: jfs-discussion@lists.sourceforge.net
X-Spam-Score: 1.6 (+)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.208.47 listed in list.dnswl.org]
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: pm.me]
 -0.4 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.208.47 listed in wl.mailspike.net]
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 1.0 HTML_MESSAGE           BODY: HTML included in message
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1hUZw6-00A2Wb-I3
X-Mailman-Approved-At: Mon, 27 May 2019 14:22:00 +0000
Subject: Re: [Jfs-discussion] Jfs-discussion Digest, Vol 124, Issue 4
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
Content-Type: multipart/mixed; boundary="===============0006083757608435273=="
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

--===============0006083757608435273==
Content-Type: multipart/alternative; boundary="00000000000015b0ae0589b8b88f"

--00000000000015b0ae0589b8b88f
Content-Type: text/plain; charset="UTF-8"

Now that ibm owns redat, perhaps jfs should be actively developed?

On Tue, May 21, 2019, 7:12 AM <jfs-discussion-request@lists.sourceforge.net>
wrote:

> Send Jfs-discussion mailing list submissions to
>         jfs-discussion@lists.sourceforge.net
>
> To subscribe or unsubscribe via the World Wide Web, visit
>         https://lists.sourceforge.net/lists/listinfo/jfs-discussion
> or, via email, send a message with subject or body 'help' to
>         jfs-discussion-request@lists.sourceforge.net
>
> You can reach the person managing the list at
>         jfs-discussion-owner@lists.sourceforge.net
>
> When replying, please edit your Subject line so it is more specific
> than "Re: Contents of Jfs-discussion digest..."
>
>
> Today's Topics:
>
>    1. Re: jfs missing features (Dave Kleikamp)
>
>
> ----------------------------------------------------------------------
>
> Message: 1
> Date: Mon, 20 May 2019 09:06:36 -0500
> From: Dave Kleikamp <dave.kleikamp@oracle.com>
> To: argante <argante@pm.me>, JFS Discussion
>         <jfs-discussion@lists.sourceforge.net>
> Subject: Re: [Jfs-discussion] jfs missing features
> Message-ID: <04a0742f-3a38-4880-d9fb-3fd0ae334cc3@oracle.com>
> Content-Type: text/plain; charset=utf-8
>
> On 5/8/19 3:22 PM, argante via Jfs-discussion wrote:
> > Hi,
>
> Hi, sorry I let this sit in my inbox this long.
>
> >
> > Is it planned to add (some of) these features to JFS:
> >
> > * fallocate(2)
> > https://github.com/kleikamp/linux-shaggy/blob/master/fs/jfs/file.c#L151
> >
> > * 64 bit time type issue
> >
> https://github.com/kleikamp/linux-shaggy/blob/master/fs/jfs/jfs_types.h#L45
> >
> > * DAX support
> >
> https://github.com/kleikamp/linux-shaggy/blob/master/Documentation/filesystems/dax.txt
>
> No plans for any of these at this time. JFS has not been under active
> development for a long time. I continue to maintain it to keep it
> functioning, but it's not a high priority for me any more.
>
> I'd be happy to accept patches from anybody interested in implementing
> any of these, and I'm available to help with any questions, but I don't
> have plans for any of this.
>
> >
> > These things seem to be the most missing in JFS (DAX for advanced users).
> >
> > Best regards,
> > Daniel
>
> Thanks for your interest,
>
> Shaggy
>
>
>
> ------------------------------
>
>
>
> ------------------------------
>
> Subject: Digest Footer
>
> _______________________________________________
> Jfs-discussion mailing list
> Jfs-discussion@lists.sourceforge.net
> https://lists.sourceforge.net/lists/listinfo/jfs-discussion
>
>
> ------------------------------
>
> End of Jfs-discussion Digest, Vol 124, Issue 4
> **********************************************
>

--00000000000015b0ae0589b8b88f
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto">Now that ibm owns redat, perhaps jfs should be actively d=
eveloped?</div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gma=
il_attr">On Tue, May 21, 2019, 7:12 AM  &lt;<a href=3D"mailto:jfs-discussio=
n-request@lists.sourceforge.net">jfs-discussion-request@lists.sourceforge.n=
et</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margi=
n:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">Send Jfs-discussi=
on mailing list submissions to<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 <a href=3D"mailto:jfs-discussion@lists.sourcefo=
rge.net" target=3D"_blank" rel=3D"noreferrer">jfs-discussion@lists.sourcefo=
rge.net</a><br>
<br>
To subscribe or unsubscribe via the World Wide Web, visit<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 <a href=3D"https://lists.sourceforge.net/lists/=
listinfo/jfs-discussion" rel=3D"noreferrer noreferrer" target=3D"_blank">ht=
tps://lists.sourceforge.net/lists/listinfo/jfs-discussion</a><br>
or, via email, send a message with subject or body &#39;help&#39; to<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 <a href=3D"mailto:jfs-discussion-request@lists.=
sourceforge.net" target=3D"_blank" rel=3D"noreferrer">jfs-discussion-reques=
t@lists.sourceforge.net</a><br>
<br>
You can reach the person managing the list at<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 <a href=3D"mailto:jfs-discussion-owner@lists.so=
urceforge.net" target=3D"_blank" rel=3D"noreferrer">jfs-discussion-owner@li=
sts.sourceforge.net</a><br>
<br>
When replying, please edit your Subject line so it is more specific<br>
than &quot;Re: Contents of Jfs-discussion digest...&quot;<br>
<br>
<br>
Today&#39;s Topics:<br>
<br>
=C2=A0 =C2=A01. Re: jfs missing features (Dave Kleikamp)<br>
<br>
<br>
----------------------------------------------------------------------<br>
<br>
Message: 1<br>
Date: Mon, 20 May 2019 09:06:36 -0500<br>
From: Dave Kleikamp &lt;<a href=3D"mailto:dave.kleikamp@oracle.com" target=
=3D"_blank" rel=3D"noreferrer">dave.kleikamp@oracle.com</a>&gt;<br>
To: argante &lt;<a href=3D"mailto:argante@pm.me" target=3D"_blank" rel=3D"n=
oreferrer">argante@pm.me</a>&gt;, JFS Discussion<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 &lt;<a href=3D"mailto:jfs-discussion@lists.sour=
ceforge.net" target=3D"_blank" rel=3D"noreferrer">jfs-discussion@lists.sour=
ceforge.net</a>&gt;<br>
Subject: Re: [Jfs-discussion] jfs missing features<br>
Message-ID: &lt;<a href=3D"mailto:04a0742f-3a38-4880-d9fb-3fd0ae334cc3@orac=
le.com" target=3D"_blank" rel=3D"noreferrer">04a0742f-3a38-4880-d9fb-3fd0ae=
334cc3@oracle.com</a>&gt;<br>
Content-Type: text/plain; charset=3Dutf-8<br>
<br>
On 5/8/19 3:22 PM, argante via Jfs-discussion wrote:<br>
&gt; Hi,<br>
<br>
Hi, sorry I let this sit in my inbox this long.<br>
<br>
&gt; <br>
&gt; Is it planned to add (some of) these features to JFS:<br>
&gt; <br>
&gt; * fallocate(2)<br>
&gt; <a href=3D"https://github.com/kleikamp/linux-shaggy/blob/master/fs/jfs=
/file.c#L151" rel=3D"noreferrer noreferrer" target=3D"_blank">https://githu=
b.com/kleikamp/linux-shaggy/blob/master/fs/jfs/file.c#L151</a><br>
&gt; <br>
&gt; * 64 bit time type issue<br>
&gt; <a href=3D"https://github.com/kleikamp/linux-shaggy/blob/master/fs/jfs=
/jfs_types.h#L45" rel=3D"noreferrer noreferrer" target=3D"_blank">https://g=
ithub.com/kleikamp/linux-shaggy/blob/master/fs/jfs/jfs_types.h#L45</a><br>
&gt; <br>
&gt; * DAX support<br>
&gt; <a href=3D"https://github.com/kleikamp/linux-shaggy/blob/master/Docume=
ntation/filesystems/dax.txt" rel=3D"noreferrer noreferrer" target=3D"_blank=
">https://github.com/kleikamp/linux-shaggy/blob/master/Documentation/filesy=
stems/dax.txt</a><br>
<br>
No plans for any of these at this time. JFS has not been under active<br>
development for a long time. I continue to maintain it to keep it<br>
functioning, but it&#39;s not a high priority for me any more.<br>
<br>
I&#39;d be happy to accept patches from anybody interested in implementing<=
br>
any of these, and I&#39;m available to help with any questions, but I don&#=
39;t<br>
have plans for any of this.<br>
<br>
&gt; <br>
&gt; These things seem to be the most missing in JFS (DAX for advanced user=
s).<br>
&gt; <br>
&gt; Best regards,<br>
&gt; Daniel<br>
<br>
Thanks for your interest,<br>
<br>
Shaggy<br>
<br>
<br>
<br>
------------------------------<br>
<br>
<br>
<br>
------------------------------<br>
<br>
Subject: Digest Footer<br>
<br>
_______________________________________________<br>
Jfs-discussion mailing list<br>
<a href=3D"mailto:Jfs-discussion@lists.sourceforge.net" target=3D"_blank" r=
el=3D"noreferrer">Jfs-discussion@lists.sourceforge.net</a><br>
<a href=3D"https://lists.sourceforge.net/lists/listinfo/jfs-discussion" rel=
=3D"noreferrer noreferrer" target=3D"_blank">https://lists.sourceforge.net/=
lists/listinfo/jfs-discussion</a><br>
<br>
<br>
------------------------------<br>
<br>
End of Jfs-discussion Digest, Vol 124, Issue 4<br>
**********************************************<br>
</blockquote></div>

--00000000000015b0ae0589b8b88f--


--===============0006083757608435273==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline


--===============0006083757608435273==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion

--===============0006083757608435273==--

