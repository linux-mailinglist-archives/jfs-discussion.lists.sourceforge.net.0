Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id DDC74A73F7D
	for <lists+jfs-discussion@lfdr.de>; Thu, 27 Mar 2025 21:49:06 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1txu9J-00068Y-G9;
	Thu, 27 Mar 2025 20:48:26 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <pr-tracker-bot@kernel.org>) id 1txu9I-00068N-KS
 for jfs-discussion@lists.sourceforge.net;
 Thu, 27 Mar 2025 20:48:25 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Cc:To:Date:Message-Id:References:In-Reply-To:From:
 Subject:Sender:Reply-To:MIME-Version:Content-Type:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=do7YUgHYKnLpp+g2Qut2s/A5P1Gc52R5elTFonKUOJ0=; b=W1xF7hsQcg3ORmwCWjbc66y9fS
 OK6tF9Rd3NR0GEvn59u730ccwS/oUNs4pUG9neV/04t77Y/3gg0PFT9MEWXlsXt+8rDj37v0LLt4i
 6Z8naIq26PkFAciESYJwIFlXB+wKIWq/fueKIIdfbcsfU9VqMsYRVlHOuxqBdIHvjo4o=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Cc:To:Date:Message-Id:References:In-Reply-To:From:Subject:Sender:Reply-To
 :MIME-Version:Content-Type:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=do7YUgHYKnLpp+g2Qut2s/A5P1Gc52R5elTFonKUOJ0=; b=exIRbKJUQPczZ6COnPhHcLSLje
 k1cMP8exonD2nvAfnY7SnzglTvc9odI7EWYI8n/1hD8Z2iyzJJ5zWGzAh+Jaoe3FyBSAeEaPOQevl
 aFKzEfJQz0kUSRA2HrOwMcGOsOr/PiCKiB+rC7Z7WR6gtHuti0YLBAntxUMAqsXQarGs=;
Received: from sea.source.kernel.org ([172.234.252.31])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1txu9I-0007J0-Qu for jfs-discussion@lists.sourceforge.net;
 Thu, 27 Mar 2025 20:48:25 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by sea.source.kernel.org (Postfix) with ESMTP id 21C4144BEC;
 Thu, 27 Mar 2025 20:48:19 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5D657C4CEDD;
 Thu, 27 Mar 2025 20:48:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1743108499;
 bh=/g3b7aCeTuYJgNVv2KEofa9aHrE2pLsHFvsByYzGtPU=;
 h=Subject:From:In-Reply-To:References:Date:To:Cc:From;
 b=mEqY64ZAcKg/3DFw5e8J2sfKMLGgUX0wWcmiC7TmDrmuVg/Ta+Mz3B4NE3qJ1rcuR
 6DrdC4arSTHu14+5la+CaBkCaY4rhcPOCYAMvUvLP3QBuIOEsWlWcdEjV8pVqcvFpB
 SRxUB++5kmOOcVrG7DzQeLkQFd5eiHaoKWTveBHqv2lq1Un0BAML4dJ3I3eTcW5dcj
 VuWtyQO2y6WHB+LDCtUAT3GWg8XvMnpjfyZ7QPlI8P7X1+Zj+Q0O7KJe9by99a5lMJ
 CIqE9TuftI2qUjDNl3IePFUK1wxc37+T/Ha4QuGakdGVNdSTHexzyR7OZzu7LRa0/w
 wr9UxGUGQD0WQ==
Received: from [10.30.226.235] (localhost [IPv6:::1])
 by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id
 EAFD9380AAFD; Thu, 27 Mar 2025 20:48:56 +0000 (UTC)
In-Reply-To: <94b4d641-ca23-4b1a-aacb-0870e1ac7b25@oracle.com>
References: <94b4d641-ca23-4b1a-aacb-0870e1ac7b25@oracle.com>
X-PR-Tracked-List-Id: <linux-kernel.vger.kernel.org>
X-PR-Tracked-Message-Id: <94b4d641-ca23-4b1a-aacb-0870e1ac7b25@oracle.com>
X-PR-Tracked-Remote: git@github.com:kleikamp/linux-shaggy.git tags/jfs-6.14
X-PR-Tracked-Commit-Id: a8dfb2168906944ea61acfc87846b816eeab882d
X-PR-Merge-Tree: torvalds/linux.git
X-PR-Merge-Refname: refs/heads/master
X-PR-Merge-Commit-Id: f79adee883586b94cf977e4d28384ea0288473ed
Message-Id: <174310853563.2212788.6066102601757564357.pr-tracker-bot@kernel.org>
Date: Thu, 27 Mar 2025 20:48:55 +0000
To: Dave Kleikamp <dave.kleikamp@oracle.com>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  The pull request you sent on Wed, 26 Mar 2025 11:25:27 -0500:
 > git@github.com:kleikamp/linux-shaggy.git tags/jfs-6.14 has been merged
 into torvalds/linux.git:
 https://git.kernel.org/torvalds/c/f79adee883586b94cf977e4d28384ea0288473ed
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 0.0 RCVD_IN_VALIDITY_RPBL_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [172.234.252.31 listed in bl.score.senderscore.com]
 0.0 RCVD_IN_VALIDITY_CERTIFIED_BLOCKED RBL: ADMINISTRATOR NOTICE:
 The query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [172.234.252.31 listed in sa-accredit.habeas.com]
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1txu9I-0007J0-Qu
Subject: Re: [Jfs-discussion] [GIT PULL] jfs updates for v6.14
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
Cc: jfs-discussion@lists.sourceforge.net,
 Linus Torvalds <torvalds@linux-foundation.org>, linux-kernel@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

The pull request you sent on Wed, 26 Mar 2025 11:25:27 -0500:

> git@github.com:kleikamp/linux-shaggy.git tags/jfs-6.14

has been merged into torvalds/linux.git:
https://git.kernel.org/torvalds/c/f79adee883586b94cf977e4d28384ea0288473ed

Thank you!

-- 
Deet-doot-dot, I am a bot.
https://korg.docs.kernel.org/prtracker.html


_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
