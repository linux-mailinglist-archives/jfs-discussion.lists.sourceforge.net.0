Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E8C5C42C10
	for <lists+jfs-discussion@lfdr.de>; Sat, 08 Nov 2025 12:43:06 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:In-Reply-To:From:References:To:MIME-Version:Date:Message-ID:Sender:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=7VxajWY4GFhU90smiG6zBpR0VB2F4NJJr+nd4zjBRAY=; b=mLDJGFggA5EO6Ymb1Oj5sESQgA
	NU25qa36ULS6V+uMIo0FMQX03isv8+i96eLbX440c9tzjhEDqz1YJc6m5X3e2gUarBME4cbNqq5Ki
	qS2r0yfGPcSbtukTNG79Rjl0jD91yRVkF7tjUFyUUgWk6w+g0Aqlm8URxlB1wI1dXyDw=;
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1vHhKx-00012l-7T;
	Sat, 08 Nov 2025 11:42:31 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <penguin-kernel@I-love.SAKURA.ne.jp>)
 id 1vHhKv-00012f-8v for jfs-discussion@lists.sourceforge.net;
 Sat, 08 Nov 2025 11:42:29 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 From:References:Cc:To:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=8a4HP+d2FfUB1WSXBOua59ve8+CanSYwYah1hcLW/N0=; b=NAWFZH+NHqfwYvhigW+0wklmZd
 I/H97ltjjQ1ffVmZ/ny6VLimRnbs4vGSqwb7kHJnZa88tJwHHYfA6o1g9J45QOUyR6ox7fg9CfMcC
 9eO56x4SvVhvpgVRSQpsrVlz7xiGqjb5Ktz2gbSqGYUEF0Q8Snhd60j5O2ZGL8rn8moY=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:References:Cc:To:
 Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=8a4HP+d2FfUB1WSXBOua59ve8+CanSYwYah1hcLW/N0=; b=Wznwu1B9LJgFi72E9zTtfkQP2N
 zWZBbz/5NgHZocLeo9wAEAsDrOAN5NDjZr3Z6sT6POf3jVZrT9mDxRygpY4Gonx7TKzWSnThmHl+c
 FaS5Psr2ZDds3vR7bgagS6uVHrCnqRT7orB+wQm0ifUMo88Y0auEp1ClwAl0/QJCzPLA=;
Received: from www262.sakura.ne.jp ([202.181.97.72])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1vHhKu-0002o4-DZ for jfs-discussion@lists.sourceforge.net;
 Sat, 08 Nov 2025 11:42:29 +0000
Received: from www262.sakura.ne.jp (localhost [127.0.0.1])
 by www262.sakura.ne.jp (8.15.2/8.15.2) with ESMTP id 5A8AJwlI005978;
 Sat, 8 Nov 2025 19:19:58 +0900 (JST)
 (envelope-from penguin-kernel@I-love.SAKURA.ne.jp)
Received: from [192.168.1.10] (M106072142033.v4.enabler.ne.jp [106.72.142.33])
 (authenticated bits=0)
 by www262.sakura.ne.jp (8.15.2/8.15.2) with ESMTPSA id 5A8AJvkD005975
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=NO);
 Sat, 8 Nov 2025 19:19:57 +0900 (JST)
 (envelope-from penguin-kernel@I-love.SAKURA.ne.jp)
Message-ID: <c3b11943-f8ea-4283-9d88-e442bc8ff547@I-love.SAKURA.ne.jp>
Date: Sat, 8 Nov 2025 19:19:55 +0900
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: ssrane_b23@ee.vjti.ac.in, shaggy@kernel.org
Newsgroups: gmane.linux.kernel
References: <20251107200645.149093-1-ssranevjti@gmail.com>
Content-Language: en-US
From: Tetsuo Handa <penguin-kernel@I-love.SAKURA.ne.jp>
In-Reply-To: <20251107200645.149093-1-ssranevjti@gmail.com>
X-Virus-Status: clean
X-Anti-Virus-Server: fsav202.rs.sakura.ne.jp
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-2.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On 2025/11/08 5:06,
 ssrane_b23@ee.vjti.ac.in wrote: > Reported-by:
 syzbot+cfc7cab3bb6eaa7c4de2@syzkaller.appspotmail.com > Closes:
 https://syzkaller.appspot.com/bug?extid=cfc7cab3bb6eaa7c4de2
 > Signed [...] 
 Content analysis details:   (0.0 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
X-Headers-End: 1vHhKu-0002o4-DZ
Subject: Re: [Jfs-discussion] [PATCH] jfs: Initialize synclist in metapage
 allocation
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
Cc: shivankg@amd.com, jfs-discussion@lists.sourceforge.net,
 david.hunter.linux@gmail.com, david@redhat.com, linux-kernel@vger.kernel.org,
 syzbot+cfc7cab3bb6eaa7c4de2@syzkaller.appspotmail.com, khalid@kernel.org,
 skhan@linuxfoundation.org, dsterba@suse.com, akpm@linux-foundation.org,
 linux-kernel-mentees@lists.linux.dev
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

On 2025/11/08 5:06, ssrane_b23@ee.vjti.ac.in wrote:
> Reported-by: syzbot+cfc7cab3bb6eaa7c4de2@syzkaller.appspotmail.com
> Closes: https://syzkaller.appspot.com/bug?extid=cfc7cab3bb6eaa7c4de2
> Signed-off-by: Shaurya Rane <ssrane_b23@ee.vjti.ac.in>

Excuse me, but the reporter and link are for an ocfs2 bug. Please correct.



_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
