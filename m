Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id B701975844A
	for <lists+jfs-discussion@lfdr.de>; Tue, 18 Jul 2023 20:14:44 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1qLpDP-00074z-FQ;
	Tue, 18 Jul 2023 18:14:27 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <SRS0=klgq=DE=zx2c4.com=Jason@kernel.org>)
 id 1qLoxf-0006oz-24 for jfs-discussion@lists.sourceforge.net;
 Tue, 18 Jul 2023 17:58:11 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Cc:To:Subject:Message-ID:Date:From:
 In-Reply-To:References:MIME-Version:Sender:Reply-To:Content-Transfer-Encoding
 :Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Z3DDMndpyGQ9Js5DGZvxnMtOBjS6KRA0SgH3Yn0/Ifk=; b=Mg0ydHeb1ofDJfVN6DrVZ2ekOR
 fGnSujZ6TDVjk9UYKKXgCfj2uvp9pkH5Ubww4lLtwr0ZU1PZmrqt/Coz0/VYFGxuYj8WFSFl0iLI0
 D2CWMlx6ZfLrG5wrtxCz0682xyHHli3ghd00m85g5ZczWhaRXzXM/zh0Dn5nHLwbbtAo=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:References:
 MIME-Version:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=Z3DDMndpyGQ9Js5DGZvxnMtOBjS6KRA0SgH3Yn0/Ifk=; b=eOLj7OsnjihHRrzRISD0fkicAu
 8oRUELPzG9bAt3PgYxWFVAW+Rt3IhPCx9vWYj3U+CEe+NjN4RhGIpFrlbPQdraDwjgDsWoynRppCV
 HfdHfsZKnA66JrT51xMyjKNklQS/Yc/NObi7uKSTB3ZpK0JSuc999xBuxjrn4aLhtNmI=;
Received: from dfw.source.kernel.org ([139.178.84.217])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1qLoxZ-00C7go-LG for jfs-discussion@lists.sourceforge.net;
 Tue, 18 Jul 2023 17:58:11 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id 0BB22616A9
 for <jfs-discussion@lists.sourceforge.net>;
 Tue, 18 Jul 2023 17:58:00 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 3BADEC433CB
 for <jfs-discussion@lists.sourceforge.net>;
 Tue, 18 Jul 2023 17:57:59 +0000 (UTC)
Authentication-Results: smtp.kernel.org;
 dkim=pass (1024-bit key) header.d=zx2c4.com header.i=@zx2c4.com
 header.b="ex5UTj9w"
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=zx2c4.com; s=20210105; 
 t=1689703076;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=Z3DDMndpyGQ9Js5DGZvxnMtOBjS6KRA0SgH3Yn0/Ifk=;
 b=ex5UTj9wimDvzl6iBEvbtxWLBtLWz2cCL31LdbPMwtzbrm8Nj7oVrCWerFyS96RUUpBFvs
 NliCRmksdWtfl4tj7XnXOIEjRj0300HSSv3rEYvIdPBs5WvCC1M4evlgcDzwQeERm1EVdO
 ydVoP2y8Rc3KagLr6wpOTRjJh6p4Ov4=
Received: by mail.zx2c4.com (ZX2C4 Mail Server) with ESMTPSA id 2f573236
 (TLSv1.3:TLS_AES_256_GCM_SHA384:256:NO)
 for <jfs-discussion@lists.sourceforge.net>;
 Tue, 18 Jul 2023 17:57:55 +0000 (UTC)
Received: by mail-ed1-f53.google.com with SMTP id
 4fb4d7f45d1cf-51e619bcbf9so8324021a12.3
 for <jfs-discussion@lists.sourceforge.net>;
 Tue, 18 Jul 2023 10:57:55 -0700 (PDT)
X-Gm-Message-State: ABy/qLaMdAF77GoHpueJo3Dzk8G7iBC66uHcoMX4/bpYlHS8pJZm16Ta
 D9nUPpUW39sTfT93lzgpmVbAOffy9481awctebc=
X-Google-Smtp-Source: APBJJlEbE+jfEDYuzLdPmOtu5UXWbBGlbEEOaC0BX+lIg944+HdN56uIq7onSwd1wZz7Xep4OTrRvB60bolSKxN+89w=
X-Received: by 2002:aa7:c704:0:b0:51e:e67:df4d with SMTP id
 i4-20020aa7c704000000b0051e0e67df4dmr326904edq.38.1689703072538; Tue, 18 Jul
 2023 10:57:52 -0700 (PDT)
MIME-Version: 1.0
References: <0000000000002bfa570600c477b3@google.com>
In-Reply-To: <0000000000002bfa570600c477b3@google.com>
Date: Tue, 18 Jul 2023 19:57:22 +0200
X-Gmail-Original-Message-ID: <CAHmME9reBny-ufJp58uOg+KdMptircBRhLFd-N2KwxNUp6myTA@mail.gmail.com>
Message-ID: <CAHmME9reBny-ufJp58uOg+KdMptircBRhLFd-N2KwxNUp6myTA@mail.gmail.com>
To: syzbot <syzbot+96eb4e0d727f0ae998a6@syzkaller.appspotmail.com>
X-Spam-Score: -4.9 (----)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: Freed in: diUnmount+0xf3/0x100 fs/jfs/jfs_imap.c:195
 jfs_umount+0x186/0x3a0
 fs/jfs/jfs_umount.c:63 jfs_put_super+0x8a/0x190 fs/jfs/super.c:194 So maybe
 not a wg issue? 
 Content analysis details:   (-4.9 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [139.178.84.217 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
X-Headers-End: 1qLoxZ-00C7go-LG
X-Mailman-Approved-At: Tue, 18 Jul 2023 18:14:26 +0000
Subject: Re: [Jfs-discussion] [syzbot] [wireguard?] [jfs?] KASAN:
 slab-use-after-free Read in wg_noise_keypair_get
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
From: "Jason A. Donenfeld via Jfs-discussion"
 <jfs-discussion@lists.sourceforge.net>
Reply-To: "Jason A. Donenfeld" <Jason@zx2c4.com>
Cc: shaggy@kernel.org, jfs-discussion@lists.sourceforge.net,
 kuninori.morimoto.gx@renesas.com, netdev@vger.kernel.org,
 syzkaller-bugs@googlegroups.com, linux-kernel@vger.kernel.org,
 povik+lin@cutebit.org, edumazet@google.com, broonie@kernel.org,
 linux-fsdevel@vger.kernel.org, kuba@kernel.org, pabeni@redhat.com,
 davem@davemloft.net, wireguard@lists.zx2c4.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

Freed in:

 diUnmount+0xf3/0x100 fs/jfs/jfs_imap.c:195
 jfs_umount+0x186/0x3a0 fs/jfs/jfs_umount.c:63
 jfs_put_super+0x8a/0x190 fs/jfs/super.c:194

So maybe not a wg issue?


_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
