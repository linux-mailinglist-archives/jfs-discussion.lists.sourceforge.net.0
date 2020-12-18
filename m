Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A2932DEA0A
	for <lists+jfs-discussion@lfdr.de>; Fri, 18 Dec 2020 21:15:02 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1kqM98-0000gN-Th; Fri, 18 Dec 2020 20:14:38 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <rdunlap@infradead.org>) id 1kqM97-0000gF-2v
 for jfs-discussion@lists.sourceforge.net; Fri, 18 Dec 2020 20:14:37 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 MIME-Version:Date:Message-ID:From:References:Cc:To:Subject:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=tsFXi74Czj02JDF9/OuTcw7Z9zt3ff2QLJVrYO5uDG4=; b=XcGC3M2//Hp2D7fezRHZDj1ggU
 c72G8ePsdcJjpx4XchCn9bPbN0F2oH6ZENypO1OpEu/Fd4gxJuoKSZjf3VgHRSkGGq72YQsB3dHka
 pLKY5ubGH/69iFeNi+ZRelTXn/s/nukYxWfwMRlRlRG5HX8Xfu2YohXHb8UbVNe2NJjo=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:Date:
 Message-ID:From:References:Cc:To:Subject:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=tsFXi74Czj02JDF9/OuTcw7Z9zt3ff2QLJVrYO5uDG4=; b=IMnZ9n+6JkOA3FBZqUN9cS2UM/
 5M1feUBUCGSAF6J/2TBiCX+Ed9GBTYYX4cO3s67u1NDcLDhL/X9YcIxX9UlK2fCJgCG5Ytf7acyy3
 7b8B7hmTGgEcK6NqTtML0p+Rh4LISFwl/WuD6ENW2AQn5a5bj5+uuh+CfGjjLukzFPeE=;
Received: from merlin.infradead.org ([205.233.59.134])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1kqM90-001s9O-DY
 for jfs-discussion@lists.sourceforge.net; Fri, 18 Dec 2020 20:14:37 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=merlin.20170209; h=Content-Transfer-Encoding:Content-Type:
 In-Reply-To:MIME-Version:Date:Message-ID:From:References:Cc:To:Subject:Sender
 :Reply-To:Content-ID:Content-Description;
 bh=tsFXi74Czj02JDF9/OuTcw7Z9zt3ff2QLJVrYO5uDG4=; b=jszN6HtG83b0un0SVKOh6aX60G
 BeI5zZ3g0lMPofZBfaMzd2GPSYpO4+KYnQFk4pqPQtMNnDlzm+0EPWRJiJ9xUvPcxeAQT8nsweMtz
 hQY1skK/ro43KugfxAc51sKxsbHkBaBsNBcxnraDEh7j9oExvLmdwju5w4YXGwXSVQsl+ubvD77Sj
 4uqQkD/7mXPPqSB8YXxAmAEnlab7UMnGcU5ZSF3e/A/yIMBgSZonn6RceOkRxaM2W7g5u2JIVdvEf
 yH7MzhGrkVv7jbKBebUwOa9ZcZXoAFuClge+xMVYXpM2/TaI+uYGN8wOxpcViAMKJO/BVFO5PBDR+
 w0iGQqbA==;
Received: from [2601:1c0:6280:3f0::64ea]
 by merlin.infradead.org with esmtpsa (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kqM8p-0001Cd-VP; Fri, 18 Dec 2020 20:14:20 +0000
To: kernel test robot <lkp@intel.com>, linux-kernel@vger.kernel.org
References: <20201218051920.6229-1-rdunlap@infradead.org>
 <202012181528.QLtx4Ix4-lkp@intel.com>
From: Randy Dunlap <rdunlap@infradead.org>
Message-ID: <b0133786-91d2-1d7e-3ebb-00ee63b62eb6@infradead.org>
Date: Fri, 18 Dec 2020 12:14:15 -0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.4.0
MIME-Version: 1.0
In-Reply-To: <202012181528.QLtx4Ix4-lkp@intel.com>
Content-Language: en-US
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: intel.com]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [205.233.59.134 listed in wl.mailspike.net]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.0 NICE_REPLY_A           Looks like a legit reply (A)
X-Headers-End: 1kqM90-001s9O-DY
Subject: Re: [Jfs-discussion] [PATCH] JFS: more checks for invalid superblock
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
Cc: syzbot+36315852ece4132ec193@syzkaller.appspotmail.com,
 jfs-discussion@lists.sourceforge.net, kbuild-all@lists.01.org,
 Dave Kleikamp <shaggy@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

On 12/17/20 11:23 PM, kernel test robot wrote:
> Hi Randy,
> 
> Thank you for the patch! Perhaps something to improve:
> 
> [auto build test WARNING on shaggy/jfs-next]
> [also build test WARNING on linux/master linus/master v5.10 next-20201217]
> [If your patch is applied to the wrong git tree, kindly drop us a note.
> And when submitting patch, we suggest to use '--base' as documented in
> https://git-scm.com/docs/git-format-patch]
> 
> url:    https://github.com/0day-ci/linux/commits/Randy-Dunlap/JFS-more-checks-for-invalid-superblock/20201218-132143
> base:   https://github.com/kleikamp/linux-shaggy jfs-next
> config: i386-randconfig-s002-20201217 (attached as .config)
> compiler: gcc-9 (Debian 9.3.0-15) 9.3.0
> reproduce:
>         # apt-get install sparse
>         # sparse version: v0.6.3-184-g1b896707-dirty
>         # https://github.com/0day-ci/linux/commit/11cb0575aca69504da8b7984fc7f3e439b1a2331
>         git remote add linux-review https://github.com/0day-ci/linux
>         git fetch --no-tags linux-review Randy-Dunlap/JFS-more-checks-for-invalid-superblock/20201218-132143
>         git checkout 11cb0575aca69504da8b7984fc7f3e439b1a2331
>         # save the attached .config to linux build tree
>         make W=1 C=1 CF='-fdiagnostic-prefix -D__CHECK_ENDIAN__' ARCH=i386 
> 
> If you fix the issue, kindly add following tag as appropriate
> Reported-by: kernel test robot <lkp@intel.com>
> 
> 
> "sparse warnings: (new ones prefixed by >>)"
>>> fs/jfs/jfs_mount.c:373:17: sparse: sparse: restricted __le32 degrades to integer
> 

Thank you. I have fixed that.

-- 
~Randy



_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
