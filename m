Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 28EDB1EC800
	for <lists+jfs-discussion@lfdr.de>; Wed,  3 Jun 2020 05:50:39 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1jgKPz-00062G-9k; Wed, 03 Jun 2020 03:50:19 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <pr-tracker-bot@kernel.org>) id 1jgKPy-000621-4B
 for jfs-discussion@lists.sourceforge.net; Wed, 03 Jun 2020 03:50:18 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Cc:To:Date:Message-Id:References:In-Reply-To:From:
 Subject:Sender:Reply-To:MIME-Version:Content-Type:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=o499Iwm+287kynb7QwCUr3+hJ77ao99GM19LzhBf8OY=; b=TvhdLM1z4ujfsd1cSmgTMkUsdW
 m7kOFuaqG2bm7E7nC89etcXl6PELaxrvUZB8nL5V/9IB//CRHEWsRzrlijULMUsjL38X5Etinueem
 OCJt2SRRNjs+11LwwwV3UdplE4CxQz9AtNjMCYAWo5xoTIZ5s4YoVwTnUPQ5w5ghtc5I=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Cc:To:Date:Message-Id:References:In-Reply-To:From:Subject:Sender:Reply-To
 :MIME-Version:Content-Type:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=o499Iwm+287kynb7QwCUr3+hJ77ao99GM19LzhBf8OY=; b=PCC7NfKPCQ2AI5kbDEeNJUet2I
 4idB3/JbQF3QFpJnmxsSwABXz3Ze2/fxhrrMIYVc1HUNWxGyjOR4u4OxvjYHGfOpNj2rHKzHqW3Tu
 UVfXWzG5Pc8hVnZ771FGQhYZMXDzo0nevl/fntE4gcE/C1KQg5BEd6sUi/vhuY7QQH/c=;
Received: from mail.kernel.org ([198.145.29.99])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1jgKPw-003QHX-SO
 for jfs-discussion@lists.sourceforge.net; Wed, 03 Jun 2020 03:50:18 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1591156210;
 bh=YegEQP6qj9Vlub60a8t9aZljVdBvzmx+glkc3E0v2io=;
 h=From:In-Reply-To:References:Date:To:Cc:From;
 b=yoNzSfdLEJj55DdJtQj3WCLLu9yy28lsdpTvEegSrLARr30Dg7HIlCHAo2rsaRnQZ
 ZStWlNYIH9EtSw7h07MR/aGdNbp2cjgvbMw+MiXFDi22qDcVaIfSLZ+OpDcpOC3wE7
 Zjs5SXMJ8d1f8b5QZoZ86DrTBXKoDi3EJYbvIU5I=
From: pr-tracker-bot@kernel.org
In-Reply-To: <3be89f81-68af-3520-56f6-f4a34b823a38@oracle.com>
References: <3be89f81-68af-3520-56f6-f4a34b823a38@oracle.com>
X-PR-Tracked-List-Id: <linux-kernel.vger.kernel.org>
X-PR-Tracked-Message-Id: <3be89f81-68af-3520-56f6-f4a34b823a38@oracle.com>
X-PR-Tracked-Remote: git://github.com/kleikamp/linux-shaggy.git tags/jfs-5.8
X-PR-Tracked-Commit-Id: 7aba5dcc234635b44b2781dbc268048cfba388ad
X-PR-Merge-Tree: torvalds/linux.git
X-PR-Merge-Refname: refs/heads/master
X-PR-Merge-Commit-Id: cadf32234b6f6dd96a0892bf915e3ee8c438cf07
Message-Id: <159115621062.30123.17117180689561684595.pr-tracker-bot@kernel.org>
Date: Wed, 03 Jun 2020 03:50:10 +0000
To: Dave Kleikamp <dave.kleikamp@oracle.com>
X-Spam-Score: -0.5 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
 -0.4 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1jgKPw-003QHX-SO
Subject: Re: [Jfs-discussion] [GIT PULL] JFS fix for v5.8
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
Cc: "jfs-discussion@lists.sourceforge.net"
 <jfs-discussion@lists.sourceforge.net>,
 Linus Torvalds <torvalds@linux-foundation.org>,
 LKML <linux-kernel@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

The pull request you sent on Tue, 2 Jun 2020 10:22:02 -0500:

> git://github.com/kleikamp/linux-shaggy.git tags/jfs-5.8

has been merged into torvalds/linux.git:
https://git.kernel.org/torvalds/c/cadf32234b6f6dd96a0892bf915e3ee8c438cf07

Thank you!

-- 
Deet-doot-dot, I am a bot.
https://korg.wiki.kernel.org/userdoc/prtracker


_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
