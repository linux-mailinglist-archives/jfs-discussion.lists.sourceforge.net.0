Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 20A887BE1EC
	for <lists+jfs-discussion@lfdr.de>; Mon,  9 Oct 2023 15:56:16 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1qpqjo-0006fg-St;
	Mon, 09 Oct 2023 13:55:59 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <brauner@kernel.org>) id 1qpqjo-0006fa-8Y
 for jfs-discussion@lists.sourceforge.net;
 Mon, 09 Oct 2023 13:55:59 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=DRqjrg0j7GONsh5GzBzP+A72WJxZ6ioATyVB0ZfWFBU=; b=SXphEw6+Iz7hg71qSTTwtuagx2
 hUm4BSOajNiK3j+l/dIOEhCR+mlm7s3utc2PkHrALsd+CDmAF2ywRZx9c8qebiuhforVhkGE6y3An
 CEBYhkWWfLio5Unb6FnpgnaPZLfedHNiNDYkyr4xLGI1heUmntSyNKhPpAMjMmMKTQRk=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=DRqjrg0j7GONsh5GzBzP+A72WJxZ6ioATyVB0ZfWFBU=; b=GNexQce/bbRdhWSNOzpUtH+nKo
 kAeeQIEhEvtyN+gHmfG/XymclV3bXh/34co4tbb5jp09AEU64y3o16pTCd4VhFglEClEJ9ivP0rDC
 uQeclwYb0EjcpOqbaQZT/Tamdzo5ALwjKFnD0CqgRPMEVfIp494VN/q0fKBf73Z1nGVM=;
Received: from sin.source.kernel.org ([145.40.73.55])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1qpqjk-008SXZ-Bm for jfs-discussion@lists.sourceforge.net;
 Mon, 09 Oct 2023 13:55:58 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by sin.source.kernel.org (Postfix) with ESMTP id 40B39CE137E;
 Mon,  9 Oct 2023 13:55:46 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 2E413C433C7;
 Mon,  9 Oct 2023 13:55:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1696859745;
 bh=DRqjrg0j7GONsh5GzBzP+A72WJxZ6ioATyVB0ZfWFBU=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=lgXJuTFq9b2AtpFyPlgWucQ5gsgWhVPBRpzC1HCH57pR97eATKKhO311M+eojKtFf
 dxfLLR4SE0Ade5nCZ9vIiZC7Eb9AVk3woNffrmQoY5F5odGs0x5/VvRz6k+NGcl7p9
 bZCAW6gG5YNE4vv2XmpeIj+JBTNikG3losMbQsTsLxgh/m7a0eD1xTrYmjf2BIqWpa
 S0mgG7lwXGz8j3g3BAqZB8v5IMTZBrdszcTLvmucc/88pIJtH8zhR41dTNb1ZShYS/
 ADp9Og1mfInXMn+qXTbv0ylbUqhNBLGyjTqWxBoRAfV1q6Diekq1o3mpVcpJkx/GcP
 DuQfo3zOkvacA==
Date: Mon, 9 Oct 2023 15:55:38 +0200
To: Jan Kara <jack@suse.cz>
Message-ID: <20231009-obendrauf-biodiesel-0d76cdd76ab5@brauner>
References: <0000000000005239cf060727d3f6@google.com>
 <20231009094557.1398920-1-lizhi.xu@windriver.com>
 <20231009100825.dkkaylsrj4db3ekp@quack3>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20231009100825.dkkaylsrj4db3ekp@quack3>
X-Spam-Score: -2.5 (--)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  > Christian,
 please pick up this fixup into your tree. Thanks! Done! 
 Content analysis details:   (-2.5 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [145.40.73.55 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid -0.0 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1qpqjk-008SXZ-Bm
Subject: Re: [Jfs-discussion] [PATCH] jfs: fix log->bdev_handle null ptr
 deref in lbmStartIO
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
From: Christian Brauner via Jfs-discussion
 <jfs-discussion@lists.sourceforge.net>
Reply-To: Christian Brauner <brauner@kernel.org>
Cc: axboe@kernel.dk, shaggy@kernel.org, jfs-discussion@lists.sourceforge.net,
 johannes.thumshirn@wdc.com, syzkaller-bugs@googlegroups.com,
 syzbot+23bc20037854bb335d59@syzkaller.appspotmail.com,
 linux-kernel@vger.kernel.org, Lizhi Xu <lizhi.xu@windriver.com>, hare@suse.de,
 linux-fsdevel@vger.kernel.org, hch@lst.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

> Christian, please pick up this fixup into your tree. Thanks!

Done!


_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
