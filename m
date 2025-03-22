Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 74DC4A6CAF1
	for <lists+jfs-discussion@lfdr.de>; Sat, 22 Mar 2025 15:54:31 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1tw0EX-0000Hw-EL;
	Sat, 22 Mar 2025 14:53:57 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <viro@ftp.linux.org.uk>) id 1tw0EV-0000Hp-Sk
 for jfs-discussion@lists.sourceforge.net;
 Sat, 22 Mar 2025 14:53:56 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Sender:In-Reply-To:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=X0GxGmiZBiEAGm66BhJ5lPv94pMwvTP6CV2+E77cK/8=; b=XwKfoWJ8JF7zO/RAC+bLT+dr7s
 qqg5Eco2gFhVS69fBAvWNJNz8O5tgKNn2126QJhG9ERlzaYTJnPcBjAIyBGADvH3sG8sLc4VYjuOT
 SOCIHcgHFMxmuTGQCuZrAV7mJHhAMzHOamR60XUP2Yomd5Kflx2itEu5n9VnQ+uYs+1U=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Sender:In-Reply-To:Content-Type:MIME-Version:References:Message-ID:
 Subject:Cc:To:From:Date:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=X0GxGmiZBiEAGm66BhJ5lPv94pMwvTP6CV2+E77cK/8=; b=Z6wnXVgdt/Ze3MftV4HLE4/4r/
 JaB6cj+PFO+HPcIxXVB054xkLIK1p8YikoTXmzB2B43WPDK3gd6VIqK57QGDv8E5qwjBFydllcqXi
 PdGe7wt6KhVVq+O//4pYkDVb9WOuMKrg6n6aA9GRB38o7QpmAoAtUGzi/EvdbaPXuVTs=;
Received: from zeniv.linux.org.uk ([62.89.141.173])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1tw0EU-00033Z-W0 for jfs-discussion@lists.sourceforge.net;
 Sat, 22 Mar 2025 14:53:56 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=linux.org.uk; s=zeniv-20220401; h=Sender:In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=X0GxGmiZBiEAGm66BhJ5lPv94pMwvTP6CV2+E77cK/8=; b=JoCPy1wtTtjF+ETgtHmd+8sIm5
 cPErzWp3/AZ48L6upgbsUkYIqchUAe/Ej2AztHoxRKGMXqToFaG45hVvgh9mKurxCFHmnCAMKi5dB
 m/3nHRY9r7EfNZ1PyzkV6OzipYHShigY+35eTsBQZBnQNJA5j+OSjgU2CsxI3a+d01zkgpfXySXf5
 1OAPJH/ZJROXrQ9rLBnD65D9Ftp3tj3yrLBY/zaTCkI4BxgcTQmaQJpna24k/4tiig+Mam65v8K4v
 1+EOU17BYSvy+tIsCBfgoyrMddseNpiVu0vkAKaF/r42GunBSfsqRc4NbzJVs+Nuxl0vvi6LQz/Ux
 cWD8U3IQ==;
Received: from viro by zeniv.linux.org.uk with local (Exim 4.98.1 #2 (Red Hat
 Linux)) id 1tvzwz-0000000DSqx-1OeI; Sat, 22 Mar 2025 14:35:49 +0000
Date: Sat, 22 Mar 2025 14:35:49 +0000
To: Purva Yeshi <purvayeshi550@gmail.com>
Message-ID: <20250322143549.GH2023217@ZenIV>
References: <20250322142134.35325-1-purvayeshi550@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250322142134.35325-1-purvayeshi550@gmail.com>
X-Spam-Score: -2.4 (--)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Sat, Mar 22, 2025 at 07:51:34PM +0530, Purva Yeshi wrote:
 > Bug detected by Syzbot: > BUG: sleeping function called from invalid context
 in jfs_fsync > > Fix jfs_fsync() to avoid sleeping in softir [...] 
 Content analysis details:   (-2.4 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 RCVD_IN_VALIDITY_SAFE_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [62.89.141.173 listed in sa-trusted.bondedsender.org]
 0.0 RCVD_IN_VALIDITY_RPBL_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [62.89.141.173 listed in bl.score.senderscore.com]
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [62.89.141.173 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Headers-End: 1tw0EU-00033Z-W0
Subject: Re: [Jfs-discussion] [PATCH] fs: jfs: Avoid sleeping function call
 in softirq
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
From: Al Viro via Jfs-discussion <jfs-discussion@lists.sourceforge.net>
Reply-To: Al Viro <viro@zeniv.linux.org.uk>
Cc: syzbot+219127d0a3bce650e1b6@syzkaller.appspotmail.com,
 Dave Kleikamp <shaggy@kernel.org>, jfs-discussion@lists.sourceforge.net,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

On Sat, Mar 22, 2025 at 07:51:34PM +0530, Purva Yeshi wrote:
> Bug detected by Syzbot:
> BUG: sleeping function called from invalid context in jfs_fsync
> 
> Fix jfs_fsync() to avoid sleeping in softirq/atomic, preventing crash.
> Skip execution in softirq/atomic and return -EWOULDBLOCK to prevent issues.
> Correct generic_file_fsync() call to pass the required arguments properly.

_ANY_ ->fsync() instance may sleep; adding that bandaid in jfs one does
not fix anything - the realy bug is whatever leads to having that
*called* in such conditions (e.g. having an unbalanced spin_lock()
somewhere, etc.)

NAK.


_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
