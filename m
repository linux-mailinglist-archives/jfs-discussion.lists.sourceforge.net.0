Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 07E7785B2D9
	for <lists+jfs-discussion@lfdr.de>; Tue, 20 Feb 2024 07:22:49 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1rcJWP-0001Mj-KJ;
	Tue, 20 Feb 2024 06:22:30 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <eadavis@qq.com>) id 1rcJWN-0001Mc-Kg
 for jfs-discussion@lists.sourceforge.net;
 Tue, 20 Feb 2024 06:22:28 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Date:Subject:Cc:To:From:Message-ID:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=KvQgfrpHTfaIAHlMoCXgNUZv8A1FgCwmH70Zc3FIOTo=; b=Uemv9Gf8vXjYujfWLhQExGhP8+
 tfYJVP33apNYmeZWalv9Ggsa95iwEO0y3nvuzS9JKsfqWEKCFB4VY0fqBZAVkBrL4ztQ84penPdRg
 MmRi6So63cp/OaIpkNoVft83tS4z8T2xCSnEeIGoM9E50RvlOVYLyusM5pszUyZpxY38=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Date:
 Subject:Cc:To:From:Message-ID:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=KvQgfrpHTfaIAHlMoCXgNUZv8A1FgCwmH70Zc3FIOTo=; b=UDO7z8BJIQ4mKCITDL2f0+6gbz
 IW9eUm8siD1Hfh5xoGGeRKtNnNjcpx/urbOAzBJmkt8MO+rNkHP3V5swm/nW7dYRzUpxEjWROcHgD
 fcbbldgiUCw5eL+pEcROdYyETAsNRpFO45TFYQqYgp2/KijoQ2AI7oXcMKLzwOZW+q2w=;
Received: from out203-205-221-245.mail.qq.com ([203.205.221.245])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1rcJWG-0005aJ-He for jfs-discussion@lists.sourceforge.net;
 Tue, 20 Feb 2024 06:22:28 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qq.com; s=s201512;
 t=1708409823; bh=KvQgfrpHTfaIAHlMoCXgNUZv8A1FgCwmH70Zc3FIOTo=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References;
 b=yH0iu8H66V8ZZK8gHSccPIvv2h8k5w7zpyb/CwtAB98VP6GrUyKGaNVlaeupwitiR
 ckSlHLQ6j4XWKVQ3joBOgZLkqGO37koiDtM7IkOtQZ9SONjzrBo76BJDZj6tSLxaS1
 rtFnwl1lvy7SQ/HHlzt0PkApAZ6XhUD6FcvY9GWU=
Received: from pek-lxu-l1.wrs.com ([111.198.228.140])
 by newxmesmtplogicsvrszc5-0.qq.com (NewEsmtp) with SMTP
 id 440BBCB0; Tue, 20 Feb 2024 14:17:00 +0800
X-QQ-mid: xmsmtpt1708409820to57u16s9
Message-ID: <tencent_7D2D4F8D8DCEA5FA8D85922ADDDB5DEE9907@qq.com>
X-QQ-XMAILINFO: N7h1OCCDntujWSJcmP7VMyfwxH2aK9p36RL/XmE6WluWJMRtIQi/FA52eJXEuv
 yhjC7qKLQoKbKVbR5aHGCZFd0fL2MwqSWcuST4Yz12K7/9XzeKWRQlzvmJB8HRuingxk6bKKfTDm
 h5+DMyMlw6WeQDg+D929aEPKUr/eAOSnCTA5xUnKkQyZsjpmtrLEBTk0LuTbmRv7A54wFvqPoOfL
 /3eCcCEbe70oXL8Ax/3tuOjdP/jhU+Sj6AwUSwDjUMg1+gN2vyxsmlr5ZSL6assPezreGIyYuwbB
 xzPVN9NhYjY2lFNmrOhEk/W8PnfvcenRZe3cX0FawEyGipIZHfSX7/Evb75jye0JLuwgcxtk7oe7
 DsifPRUEDFgQURIYwOR0wX3cV8QUzHQWErBrp3iTA7/nRZjNvfr5N5yOskz9CC/+Svcl7mOGNmIW
 k4q3WFvjdF/hcql3XBAgFl7IxqNF7ugm08JMCbs2izrJ6QV84zN5DAr1BjT3IYWni2XDNTvNCfIr
 9Y+ZkeJt9hRBhCjPctOOae4bi+Ss/b90Li4F7Rr/kZvClc/v1GBAU6DR+niuhFeZJI5DP1vpdzSY
 7SMqUbJRNS+D+WNz98ZAihIYpfyrkeq7biDjd+wjeZLKJrRjqUFd0xzD8MAQzNVIeD+MLkCQRSY7
 ojb79YiXSkFpgDSxPkHQ0low6t/WH609Xn3afoCwi4fGlDi7rqbYW/f5xxHSpt6xecaWTy9QjFRu
 TO+JlgyUyPErqO8auUOI3Dl53t0IWQv7h+rqTXeYY2H0BfHtuyuDnO+OPHBw4wh89JMaCI5v/Hrp
 0fi3nZ1w7iEA0YWrEHhg6lPsnIujDpweuXGNC13xGq1zsbnb3CZ6zPpPihWj+QDJib3XKkLr8D2V
 9Xu3PFt6Wp9F3V8VET9apVZW1iNzAMf2XMPxJSUfG3jZNQcXKqGndrLjMHQ1MJERQjVAQjOB5y
X-QQ-XMRINFO: MSVp+SPm3vtS1Vd6Y4Mggwc=
To: willy@infradead.org
Date: Tue, 20 Feb 2024 14:17:01 +0800
X-OQ-MSGID: <20240220061700.2256404-2-eadavis@qq.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <ZdQlbc0Hb0UZy6od@casper.infradead.org>
References: <ZdQlbc0Hb0UZy6od@casper.infradead.org>
MIME-Version: 1.0
X-Spam-Score: 3.4 (+++)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Tue, 20 Feb 2024 04:07:09 +0000, Matthew Wilcox wrote:
 > > During the execution of the jfs lazy commit,
 the jfs file system was unmounted, 
 > > causing the sbi and jfs log objects to be released, tr [...] 
 Content analysis details:   (3.4 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [203.205.221.245 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [eadavis[at]qq.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid -0.0 T_SCC_BODY_TEXT_LINE   No description available.
 0.4 RDNS_DYNAMIC           Delivered to internal network by host with
 dynamic-looking rDNS
 3.2 HELO_DYNAMIC_IPADDR    Relay HELO'd using suspicious hostname (IP
 addr 1)
X-Headers-End: 1rcJWG-0005aJ-He
Subject: Re: [Jfs-discussion] [PATCH] jfs: fix uaf in jfs_syncpt
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
From: Edward Adam Davis via Jfs-discussion
 <jfs-discussion@lists.sourceforge.net>
Reply-To: Edward Adam Davis <eadavis@qq.com>
Cc: shaggy@kernel.org, jfs-discussion@lists.sourceforge.net,
 syzbot+c244f4a09ca85dd2ebc1@syzkaller.appspotmail.com,
 syzkaller-bugs@googlegroups.com, eadavis@qq.com, linux-kernel@vger.kernel.org,
 linux-fsdevel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

On Tue, 20 Feb 2024 04:07:09 +0000, Matthew Wilcox wrote:
> > During the execution of the jfs lazy commit, the jfs file system was unmounted,
> > causing the sbi and jfs log objects to be released, triggering this issue.
> > The solution is to add mutex to synchronize jfs lazy commit and jfs unmount
> > operations.
> 
> Why is that the solution?  LAZY_LOCK with IN_LAZYCOMMIT is supposed to
LAZY_LOCK not cover jfs umount.
> cover this.  Please be more verbose in your commit messages.  Describe
> what is going wrong and why; that will allow people to understand why
> this is the correct solution to the problem.
[Syz reported]
BUG: KASAN: slab-use-after-free in __mutex_waiter_is_first kernel/locking/mutex.c:197 [inline]
BUG: KASAN: slab-use-after-free in __mutex_lock_common kernel/locking/mutex.c:686 [inline]
BUG: KASAN: slab-use-after-free in __mutex_lock+0x8f4/0x9d0 kernel/locking/mutex.c:752
Read of size 8 at addr ffff8880272d2908 by task jfsCommit/131

CPU: 3 PID: 131 Comm: jfsCommit Not tainted 6.8.0-rc4-syzkaller-00388-gced590523156 #0
Hardware name: QEMU Standard PC (Q35 + ICH9, 2009), BIOS 1.16.2-debian-1.16.2-1 04/01/2014
Call Trace:
 <TASK>
 __dump_stack lib/dump_stack.c:88 [inline]
 dump_stack_lvl+0xd9/0x1b0 lib/dump_stack.c:106
 print_address_description mm/kasan/report.c:377 [inline]
 print_report+0xc4/0x620 mm/kasan/report.c:488
 kasan_report+0xda/0x110 mm/kasan/report.c:601
 __mutex_waiter_is_first kernel/locking/mutex.c:197 [inline]
 __mutex_lock_common kernel/locking/mutex.c:686 [inline]
 __mutex_lock+0x8f4/0x9d0 kernel/locking/mutex.c:752
 jfs_syncpt+0x2a/0xa0 fs/jfs/jfs_logmgr.c:1039
 txEnd+0x30d/0x5a0 fs/jfs/jfs_txnmgr.c:549
 txLazyCommit fs/jfs/jfs_txnmgr.c:2684 [inline]
 jfs_lazycommit+0x77d/0xb20 fs/jfs/jfs_txnmgr.c:2733
 kthread+0x2c6/0x3b0 kernel/kthread.c:388
 ret_from_fork+0x45/0x80 arch/x86/kernel/process.c:147
 ret_from_fork_asm+0x1b/0x30 arch/x86/entry/entry_64.S:242


Freed by task 5177:
 kasan_save_stack+0x33/0x60 mm/kasan/common.c:47
 kasan_save_track+0x14/0x30 mm/kasan/common.c:68
 kasan_save_free_info+0x3f/0x60 mm/kasan/generic.c:640
 poison_slab_object mm/kasan/common.c:241 [inline]
 __kasan_slab_free+0x121/0x1c0 mm/kasan/common.c:257
 kasan_slab_free include/linux/kasan.h:184 [inline]
 slab_free_hook mm/slub.c:2121 [inline]
 slab_free mm/slub.c:4299 [inline]
 kfree+0x124/0x370 mm/slub.c:4409
 lmLogClose+0x585/0x710 fs/jfs/jfs_logmgr.c:1461
 jfs_umount+0x2f0/0x440 fs/jfs/jfs_umount.c:114
 jfs_put_super+0x88/0x1d0 fs/jfs/super.c:194

[Analyze]
This issue occurs due to task 131 executing jfs lazy commit and task 5177 executing
jfs put super (which will release objects such as sbi and jfs log).

The solution is to use mutex to sort the two tasks and determine whether the log
and sbi objects are valid before using them. 
This way, regardless of who executes the two tasks first, the latter can determine
whether the log and sbi objects are valid or invalid, thus avoiding the current problem.



_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
