Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 88D67BB8353
	for <lists+jfs-discussion@lfdr.de>; Fri, 03 Oct 2025 23:34:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:
	MIME-Version:Cc:Reply-To:From:List-Subscribe:List-Help:List-Post:List-Archive
	:List-Unsubscribe:List-Id:Subject:To:Date:Message-Id:References:In-Reply-To:
	Sender:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=O4VvBvKc3PAVETOXaOZtCQ9+Fn7LtJnyP3j379xoMhQ=; b=YvVqLhs+o7qaH/cjR6uqUL6HqL
	uECny4MEx+4+7UHE03jS6HLiGPCszT8H3FTVWM91Bw1+jhlwpa+jUK7pcX8f3O993fU0ZxZCKb7k+
	8ZAZa1qOwbLSu1U0OMaCB2Mi0HfdoESC+eUd0RsMW2SZdo8X+fcJe4V5WMQWGT4xxL04=;
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1v4nP4-0001pp-A7;
	Fri, 03 Oct 2025 21:33:26 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <pr-tracker-bot@kernel.org>) id 1v4nP3-0001pi-Ae
 for jfs-discussion@lists.sourceforge.net;
 Fri, 03 Oct 2025 21:33:25 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Cc:To:Date:Message-Id:References:In-Reply-To:From:
 Subject:Sender:Reply-To:MIME-Version:Content-Type:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=ZRcaSSHmsF7h3DSE8vpRJXhyDaH/QASC5o1Zd2Ijxq8=; b=T7MRDU82buanmPwB5THQnErqEQ
 p+s+1r0y9eMCQvfFmmf+D7TNrBr8SUlSrDqTl9eHDUMcuIieG8qoDd3IJ4QysSMk8M0R+2+NACwa6
 ucD4yiiQxx3xd/P9paoXcidV6prAT5fb1RzpDg2NBOEJF1ZY/T3APHLLPuDcAP731apI=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Cc:To:Date:Message-Id:References:In-Reply-To:From:Subject:Sender:Reply-To
 :MIME-Version:Content-Type:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=ZRcaSSHmsF7h3DSE8vpRJXhyDaH/QASC5o1Zd2Ijxq8=; b=c7aEvHUzsouGCr3OsArVn6ldiN
 +h6KRGX0P4lfWfY2uThCTZ5JqReenemDsprbnJCQ+JGMZ7iyqltp8BbRM4vfrWBzb9jMGTfZcdZDh
 yStcXHCX9dMrYs9xdTLLQ90ECBzRCuHC64xc6llOfNsXdxh3M7zReldldMU3y+0z8X5w=;
Received: from tor.source.kernel.org ([172.105.4.254])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1v4nP2-0007GR-PX for jfs-discussion@lists.sourceforge.net;
 Fri, 03 Oct 2025 21:33:25 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by tor.source.kernel.org (Postfix) with ESMTP id BD20F62020;
 Fri,  3 Oct 2025 21:33:13 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 6EA99C4CEFC;
 Fri,  3 Oct 2025 21:33:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1759527193;
 bh=3xSs4RrCNzKxDKmpGZWXuOWngJGzACqZi1M4byX9/fQ=;
 h=Subject:From:In-Reply-To:References:Date:To:Cc:From;
 b=M2AWTBj551SDOPH3drUosPcP0tjtMw5FIBQPxTx9/gZpp9/y1wG+VUViTeolg5UIh
 F+RYjSTflyWsQw40vIojNeseEh5HN3jfwHT0Gl0BD3A/TNZ4UNlGvakGixomOtZzDU
 yyDRpG2VB+hZZvL7t3/lCQj3/1bvTj9LhqyjJz94sHyDROUqMQ2rqIK+YUM1Dj/fGo
 KowXZ3JrsSd30CHsiS6Ni2qwPblmvGKub6S2zGVIXqU1Ux4MHCeJtXEIwt+xwxD1/z
 MQdvTK7krnaN65txB5vW276jbkC9Vm6hpoTMCswfXAde/hB9yb2R7MdHQbTDzaeqAc
 9DzV49BxaMk5w==
Received: from [10.30.226.235] (localhost [IPv6:::1])
 by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id
 EB52539D0C1A; Fri,  3 Oct 2025 21:33:05 +0000 (UTC)
In-Reply-To: <5c57a633-af5b-454e-8adf-c28b3e66df12@oracle.com>
References: <5c57a633-af5b-454e-8adf-c28b3e66df12@oracle.com>
X-PR-Tracked-List-Id: <linux-kernel.vger.kernel.org>
X-PR-Tracked-Message-Id: <5c57a633-af5b-454e-8adf-c28b3e66df12@oracle.com>
X-PR-Tracked-Remote: git@github.com:kleikamp/linux-shaggy.git tags/jfs-6.18
X-PR-Tracked-Commit-Id: cafc6679824a026998d93e7435f6005f64e515d2
X-PR-Merge-Tree: torvalds/linux.git
X-PR-Merge-Refname: refs/heads/master
X-PR-Merge-Commit-Id: 5cb08b62fb1ecacf886fc0142316b17230e1b3a9
Message-Id: <175952718451.86168.12340283773004903380.pr-tracker-bot@kernel.org>
Date: Fri, 03 Oct 2025 21:33:04 +0000
To: Dave Kleikamp <dave.kleikamp@oracle.com>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-1.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  The pull request you sent on Wed, 1 Oct 2025 10:30:17 -0500:
 > git@github.com:kleikamp/linux-shaggy.git tags/jfs-6.18 has been merged
 into torvalds/linux.git:
 https://git.kernel.org/torvalds/c/5cb08b62fb1ecacf886fc0142316b17230e1b3a9
 Content analysis details:   (-0.2 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1v4nP2-0007GR-PX
Subject: Re: [Jfs-discussion] [GIT PULL] jfs updates for v6.18
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
From: pr-tracker-bot--- via Jfs-discussion
 <jfs-discussion@lists.sourceforge.net>
Reply-To: pr-tracker-bot@kernel.org
Cc: "jfs-discussion@lists.sourceforge.net"
 <jfs-discussion@lists.sourceforge.net>,
 Linus Torvalds <torvalds@linux-foundation.org>, linux-kernel@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

The pull request you sent on Wed, 1 Oct 2025 10:30:17 -0500:

> git@github.com:kleikamp/linux-shaggy.git tags/jfs-6.18

has been merged into torvalds/linux.git:
https://git.kernel.org/torvalds/c/5cb08b62fb1ecacf886fc0142316b17230e1b3a9

Thank you!

-- 
Deet-doot-dot, I am a bot.
https://korg.docs.kernel.org/prtracker.html


_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
