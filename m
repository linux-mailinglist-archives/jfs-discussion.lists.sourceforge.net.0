Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id A6FF675D5DF
	for <lists+jfs-discussion@lfdr.de>; Fri, 21 Jul 2023 22:41:25 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1qMwvx-00030u-Ax;
	Fri, 21 Jul 2023 20:41:05 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <mkoutny@suse.com>) id 1qMQOi-0005Bz-TB
 for jfs-discussion@lists.sourceforge.net;
 Thu, 20 Jul 2023 09:56:36 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=b/WAt2ko11CilJolgusZ/OdpYjV+EX3EkCvfXpZrr+s=; b=JRrO0hFSLY/k3H+7ubJu/x2cQq
 DRcgTA0vtRjVtA83tMeEPTyCgYguFSrqGnzVcpcvUO7q3QW8lFJXUiWQ0l3tvqdDH0jOEAfyk/8Xr
 JaF+GwSSbgyQtJdReDluChR5rQyJGh757oFgVq6PF4G+uKNxrLN1tG6ahsWVBsRA9ENo=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=b/WAt2ko11CilJolgusZ/OdpYjV+EX3EkCvfXpZrr+s=; b=AunjNEsEpiZq+8vbR5Yrn2II+Y
 7NGeKBVrbduFrwFdpbaA9LYxs31c5CeH9iIdRbeumSMm9ZP/7NRj+Dd7bfkosfZa0lrfBEfATK7Wu
 E/nybI4dArnUHAwbFxSsbTPw6bGKtYz9/Adbl06VguOaf6WtpwFHd7ggDt7oq3z/ib5Y=;
Received: from smtp-out1.suse.de ([195.135.220.28])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1qMQOg-00Dwt8-KQ for jfs-discussion@lists.sourceforge.net;
 Thu, 20 Jul 2023 09:56:36 +0000
Received: from imap2.suse-dmz.suse.de (imap2.suse-dmz.suse.de [192.168.254.74])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature ECDSA (P-521) server-digest SHA512)
 (No client certificate requested)
 by smtp-out1.suse.de (Postfix) with ESMTPS id 0A75822B47;
 Thu, 20 Jul 2023 09:56:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.com; s=susede1;
 t=1689846985; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
 mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=b/WAt2ko11CilJolgusZ/OdpYjV+EX3EkCvfXpZrr+s=;
 b=rYM95cPglHk9jDNfuHASRTtJqM/HIqnacVgIXmHuxF4ODF6cin0kf8fTvWqt6glaITqfuy
 7+RzwU9B0mJDUrMkqT64sKEfgPT1Dod0laGPnAG/mMbq2gCiy9Ke+G7gEGBRbVuz5RaeCw
 yAuwOjCRnfVMyzo1MI8oU4a5/yqlvJ4=
Received: from imap2.suse-dmz.suse.de (imap2.suse-dmz.suse.de [192.168.254.74])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature ECDSA (P-521) server-digest SHA512)
 (No client certificate requested)
 by imap2.suse-dmz.suse.de (Postfix) with ESMTPS id D4A08138EC;
 Thu, 20 Jul 2023 09:56:24 +0000 (UTC)
Received: from dovecot-director2.suse.de ([192.168.254.65])
 by imap2.suse-dmz.suse.de with ESMTPSA id YmAUM8gEuWQIVQAAMHmgww
 (envelope-from <mkoutny@suse.com>); Thu, 20 Jul 2023 09:56:24 +0000
Date: Thu, 20 Jul 2023 11:56:23 +0200
To: Zheng Wang <zyytlz.wz@163.com>
Message-ID: <kyzmstq5dodvgpmd7rge3gtdikbbpauw6fide7vccgii4xtb6n@bwrwjsx4ylmx>
References: <20230515095956.17898-1-zyytlz.wz@163.com>
MIME-Version: 1.0
In-Reply-To: <20230515095956.17898-1-zyytlz.wz@163.com>
X-Spam-Score: -2.5 (--)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hello Zheng. On Mon, May 15, 2023 at 05:59:56PM +0800, Zheng
 Wang <zyytlz.wz@163.com> wrote: >
 ==================================================================
 > BUG: KASAN: slab-use-after-free in instrument_ato [...] 
 Content analysis details:   (-2.5 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.28 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1qMQOg-00Dwt8-KQ
X-Mailman-Approved-At: Fri, 21 Jul 2023 20:41:02 +0000
Subject: Re: [Jfs-discussion] [PATCH] fs/jfs: Add a mutex named
 txEnd_lmLogClose_mutex to prevent a race condition between txEnd and
 lmLogClose functions
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
From: Michal =?utf-8?Q?Koutn=C3=BD?= via Jfs-discussion
 <jfs-discussion@lists.sourceforge.net>
Reply-To: Michal =?utf-8?Q?Koutn=C3=BD?= <mkoutny@suse.com>
Cc: shaggy@kernel.org, jfs-discussion@lists.sourceforge.net,
 alex000young@gmail.com, security@kernel.org, linux-kernel@vger.kernel.org,
 hackerzheng666@gmail.com, 1395428693sheep@gmail.com
Content-Type: multipart/mixed; boundary="===============7936393891584670080=="
Errors-To: jfs-discussion-bounces@lists.sourceforge.net


--===============7936393891584670080==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="jkju3j6sdz2snaei"
Content-Disposition: inline


--jkju3j6sdz2snaei
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hello Zheng.

On Mon, May 15, 2023 at 05:59:56PM +0800, Zheng Wang <zyytlz.wz@163.com> wr=
ote:
> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
> BUG: KASAN: slab-use-after-free in instrument_atomic_write include/linux/=
instrumented.h:87 [inline]
> BUG: KASAN: slab-use-after-free in clear_bit include/asm-generic/bitops/i=
nstrumented-atomic.h:41 [inline]
> BUG: KASAN: slab-use-after-free in txEnd+0x2a3/0x5a0 fs/jfs/jfs_txnmgr.c:=
535
> Write of size 8 at addr ffff888021bee840 by task jfsCommit/130
>=20
> CPU: 3 PID: 130 Comm: jfsCommit Not tainted 6.3.0-rc7-pasta #1

Is this still pertinent with the current mainline? (There were some
changes to jfs.)

> Through analysis, it was found that a race condition occurred between two
> functions lmLogClose and txEnd, which were executed in different threads.
> The possible sequence is as follows:
>=20
> -------------------------------------------------------------------------
> cpu1(free thread)        |        cpu2(use thread)
> -------------------------------------------------------------------------
> lmLogClose               |        txEnd
>                          |        log =3D JFS_SBI(tblk->sb)->log;
> sbi->log =3D NULL;         |
> kfree(log); [1] free log |
>                          |        clear_bit(log_FLUSH, &log->flag); [2] U=
AF

That looks sane to a by-passer.

> Fix it by add a mutex lock between lmLogClose and txEnd:

It doesn't feel right wrt "lock data, not code" heuristics.
And when I apply that, it turns out there's already jfs_log_mutex.
I'd suggest you explain more why a new lock is needed (if that's the
preferred solutino).

Thanks,
Michal

--jkju3j6sdz2snaei
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQQpEWyjXuwGT2dDBqAGvrMr/1gcjgUCZLkExgAKCRAGvrMr/1gc
jgMiAQDiHc2GPqN8BEsMex2H34eKF9kt0wtLtDPBjnRrVmd8ygEA43Tu18sFH+MU
p0UqiCSAchUq85Mzs0XfmVLFFOAmXAU=
=Toyw
-----END PGP SIGNATURE-----

--jkju3j6sdz2snaei--


--===============7936393891584670080==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline


--===============7936393891584670080==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion

--===============7936393891584670080==--

