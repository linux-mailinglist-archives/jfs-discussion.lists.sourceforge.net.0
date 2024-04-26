Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 1667D8B2EEB
	for <lists+jfs-discussion@lfdr.de>; Fri, 26 Apr 2024 05:28:07 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1s0CFa-00034W-GH;
	Fri, 26 Apr 2024 03:27:50 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <willy@infradead.org>) id 1s0CFY-00034N-TD
 for jfs-discussion@lists.sourceforge.net;
 Fri, 26 Apr 2024 03:27:49 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=BruGrpEeGl8Bbb8+2NZYWt0i7WnhcaeFDM/TK8ffawQ=; b=DFV9WdYZVGUKYegbvMn26gjjfZ
 qk7MewFXj00UyMr22wHGXpBxWECQtUlhGduKhZkD+7o6U5marE+9dhFPaOtlENZT35VRC7whgNINg
 rwS10MBpmBoRBiys8bZTD5utl1jzfLafGySJHQl3MMI2rSDLUYVvYuaJItdXI39qA7es=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=BruGrpEeGl8Bbb8+2NZYWt0i7WnhcaeFDM/TK8ffawQ=; b=ltukTmnLONgBUtKHKSCIFALqyW
 dU8vxP7D4/EGCUH2civEfcztuRV0rRGYKsdXT+UM8mTDEGLzgKEMKJ2IslbFADAZSxEcXx2t8DqRL
 WedGbpEAJD7/UbR6ehBuN+sTMfpm6um2k2Lit4mtR1qvNQVN3T9OsaWaaNbsxvfQdMVw=;
Received: from casper.infradead.org ([90.155.50.34])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1s0CFY-0006Dm-4h for jfs-discussion@lists.sourceforge.net;
 Fri, 26 Apr 2024 03:27:49 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=In-Reply-To:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=BruGrpEeGl8Bbb8+2NZYWt0i7WnhcaeFDM/TK8ffawQ=; b=BuuTDgfwOMhAdCpISaRUpEsXy1
 QG0pECDaaF/LHOZ4e+IvNsCKOBvnbzJ6D58i2S3z1bwYR1KG3SdjcAfSzEP1MZUB+83TT7IJC/Xpc
 0kTZcERULzGplBdGhF5TIZI16oUgFRfzbOLLtxDbftLsvOYnznBayqZvU2khbbCxdUtZ4IYl+E6gB
 DRl+yDpJE1epqEsM3K1xot37H2sWZ2QosSBiK9uLsb29u2JlBGdN0N4oAn/UCBb80z9b9MgirdLIX
 AO4ZQI/vC+YvpCQkuwVs2PMDkHYaxFpfxik0zMdHaeG1a/lBaIpbqzASCZY/cYTHlKZ9H6yMEULkp
 xmiqxC8Q==;
Received: from willy by casper.infradead.org with local (Exim 4.97.1 #2 (Red
 Hat Linux)) id 1s0CFQ-00000004Nec-2lek;
 Fri, 26 Apr 2024 03:27:40 +0000
Date: Fri, 26 Apr 2024 04:27:40 +0100
From: Matthew Wilcox <willy@infradead.org>
To: Jeongjun Park <aha310510@gmail.com>
Message-ID: <ZisfLI3Va6D5PjT6@casper.infradead.org>
References: <ZiqNMLWFIvf43Mr-@casper.infradead.org>
 <20240426023412.52281-1-aha310510@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240426023412.52281-1-aha310510@gmail.com>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Fri, Apr 26, 2024 at 11:34:12AM +0900,
 Jeongjun Park wrote:
 > I forgot to add Dave to the cc, so I'm sending it again. > > Send final
 patch. With the patch that modified the location of > release_m [...] 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was
 blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: infradead.org]
 0.0 RCVD_IN_DNSWL_BLOCKED  RBL: ADMINISTRATOR NOTICE: The query to
 DNSWL was blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [90.155.50.34 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Headers-End: 1s0CFY-0006Dm-4h
Subject: Re: [Jfs-discussion] [PATCH] jfs: Fix array-index-out-of-bounds in
 diFree
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
Cc: shaggy@kernel.org, brauner@kernel.org, syzkaller-bugs@googlegroups.com,
 jlayton@kernel.org, jfs-discussion@lists.sourceforge.net,
 linux-kernel@vger.kernel.org, linux-fsdevel@vger.kernel.org,
 syzbot+241c815bda521982cb49@syzkaller.appspotmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

On Fri, Apr 26, 2024 at 11:34:12AM +0900, Jeongjun Park wrote:
> I forgot to add Dave to the cc, so I'm sending it again.
> 
> Send final patch. With the patch that modified the location of
> release_metapage(), out-of-bounds vulnerabilities can now be
> sufficiently prevented.

This is not a good commit message.

> +	if(agno >= MAXAG || agno < 0)

Please follow normal kernel whitespace rules -- one space between 'if'
and the open paren.


_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
