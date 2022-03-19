Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C06D4DEA62
	for <lists+jfs-discussion@lfdr.de>; Sat, 19 Mar 2022 20:28:48 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1nVekc-0001eX-IK; Sat, 19 Mar 2022 19:28:33 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <paskripkin@gmail.com>) id 1nVdjU-0002WZ-4V
 for jfs-discussion@lists.sourceforge.net; Sat, 19 Mar 2022 18:23:18 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:From:References:To:Subject:MIME-Version
 :Date:Message-ID:Content-Type:Sender:Reply-To:Cc:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=uNibqQJsY18b43mdTlcpPHoa8q7iBzS63h/TZp5dtaM=; b=R4oEbW+uhW+gl/79nt64YSf54V
 TpWWz+QLmQVacqRQw7IGgAUmh5TpRjYeUtWNmSxljvsbXJK/Ox4DRbvPxQUVgz33RIvkluKbraxvp
 ODnhHfVWiEJTAEnate+hBug8rnBH7H7smHUn71VgZzI/W03dSpUQ3Ft0NQpgvvSW6u9I=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:From:References:To:Subject:MIME-Version:Date:Message-ID:
 Content-Type:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=uNibqQJsY18b43mdTlcpPHoa8q7iBzS63h/TZp5dtaM=; b=kmCA7zvfUwJWQ4rKZn9hsKoz/+
 i0Jt3Lwb6aGIG5vbbBXufnRh+yIGnS+0XpxvRmBXUXfowfrmLvmqctWn1O8j2bFuyxeKHFw1jKIjD
 dlZ2swtvykPrGyXMwyZvAFCTsfcPisT6BkZCE/oNVc/jkEWDHUIapkt66NDVY3+FWX24=;
Received: from mail-lf1-f44.google.com ([209.85.167.44])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.94.2)
 id 1nVdjO-004MgI-Q4
 for jfs-discussion@lists.sourceforge.net; Sat, 19 Mar 2022 18:23:18 +0000
Received: by mail-lf1-f44.google.com with SMTP id w7so18788780lfd.6
 for <jfs-discussion@lists.sourceforge.net>;
 Sat, 19 Mar 2022 11:23:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=message-id:date:mime-version:user-agent:subject:content-language:to
 :references:from:in-reply-to;
 bh=uNibqQJsY18b43mdTlcpPHoa8q7iBzS63h/TZp5dtaM=;
 b=Bj4QqncBVpaSjbv6iOLVmIT4TVDgGcnxbEtz56JTO2DaNqJrzQT7dxun7tEK/V+hmN
 j5psQckDAdOJOMAmbxHhjH79umeJAMWk2hCj8wqhqQg4qn/JSwIZDZO+VlLsMmGNtw5N
 1U1JiOjcoaL14fMSV8ZZ2ov4hQCynbgUZhQxDxoUeXDaHOCH/XA8A3TokptSA9cRQK5u
 6W9XGLhEsoHGP9jYY3lQ4GHFMaEuih+/lF5p5IFucXYvGbKaJvkOoflf7fEeThxIjOXH
 dJg5X21pW1nENLvw+oNi045G8f6SBMhDMirRpBJ62t+JqAv6GnvxfbHMg84geZyTNu6z
 Pw2A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
 :content-language:to:references:from:in-reply-to;
 bh=uNibqQJsY18b43mdTlcpPHoa8q7iBzS63h/TZp5dtaM=;
 b=myIG+sP9FJTe7Wlzezr8v0a8o6JfuzK8JESeejuhXvGDGSkegXsdr/k7iqPpTDsw5g
 7/wDvJ4PYPuWsrI9iHzLnALwa1A50PHE4ChbNadfEv6BbTKrdJhq7LoWqWrAVrKwssJ2
 aomi3RzM0d9ZLBpiUwm9x8kPN3vj2ug2QwDEqt3h/to3DYkvbwKyEll4mTOXuUitmgF2
 aWc0lEcRXBpc4mtfbeC/Dt6oEf4kjraOf+/mltXceRGtPf5gKJa8GueRjDYKw/vLDMQK
 fhdCK567R/BRRLiinRWusJKNjtNH2xuiMIyHq/SWwdTfJ0/bRmuXzCHpyq01yt/77fcr
 6+Iw==
X-Gm-Message-State: AOAM532DNEtoeXSG1IolbNaHFK1CMWqq0iK6b8rBlSRx81bXSjmxRhwn
 YTB0f638XS14nqCZrQFp++Q=
X-Google-Smtp-Source: ABdhPJz4sZaNj2/GJ3fVJKviJ07zqU9lPtNEOmz7QI2eyHqw5fBLL5c0ZuZbUvAUv/ixrZfo+NcWRA==
X-Received: by 2002:ac2:4e06:0:b0:448:3218:2e22 with SMTP id
 e6-20020ac24e06000000b0044832182e22mr10146455lfr.369.1647714187792; 
 Sat, 19 Mar 2022 11:23:07 -0700 (PDT)
Received: from [192.168.1.11] ([46.235.67.145])
 by smtp.gmail.com with ESMTPSA id
 c1-20020a196541000000b00448bcdccb91sm1260932lfj.231.2022.03.19.11.23.06
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sat, 19 Mar 2022 11:23:07 -0700 (PDT)
Content-Type: multipart/mixed; boundary="------------0geXwsVQalqTa2xB0VGIHWeE"
Message-ID: <57fc3806-86c6-b1b2-4c44-083b1b7afc8b@gmail.com>
Date: Sat, 19 Mar 2022 21:23:06 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.6.1
Content-Language: en-US
To: syzbot <syzbot+46f5c25af73eb8330eb6@syzkaller.appspotmail.com>,
 jfs-discussion@lists.sourceforge.net, linux-kernel@vger.kernel.org,
 shaggy@kernel.org, syzkaller-bugs@googlegroups.com
References: <000000000000b1470105da9622aa@google.com>
From: Pavel Skripkin <paskripkin@gmail.com>
In-Reply-To: <000000000000b1470105da9622aa@google.com>
X-Spam-Score: -2.2 (--)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On 3/19/22 21:07, syzbot wrote: > Hello, > > syzbot found
 the following issue on: > > HEAD commit: 09688c0166e7 Linux 5.17-rc8 > git
 tree: upstream > console output: https://syzkaller.appspot.com/x/lo [...]
 Content analysis details:   (-2.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [paskripkin[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.44 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.44 listed in list.dnswl.org]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -2.0 NICE_REPLY_A           Looks like a legit reply (A)
X-Headers-End: 1nVdjO-004MgI-Q4
X-Mailman-Approved-At: Sat, 19 Mar 2022 19:28:31 +0000
Subject: Re: [Jfs-discussion] [syzbot] divide error in dbNextAG
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
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

This is a multi-part message in MIME format.
--------------0geXwsVQalqTa2xB0VGIHWeE
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 3/19/22 21:07, syzbot wrote:
> Hello,
> 
> syzbot found the following issue on:
> 
> HEAD commit:    09688c0166e7 Linux 5.17-rc8
> git tree:       upstream
> console output: https://syzkaller.appspot.com/x/log.txt?x=163e5015700000
> kernel config:  https://syzkaller.appspot.com/x/.config?x=70f75a89c7a0e6bc
> dashboard link: https://syzkaller.appspot.com/bug?extid=46f5c25af73eb8330eb6
> compiler:       gcc (Debian 10.2.1-6) 10.2.1 20210110, GNU ld (GNU Binutils for Debian) 2.35.2
> syz repro:      https://syzkaller.appspot.com/x/repro.syz?x=132c1d61700000
> 
> IMPORTANT: if you fix the issue, please add the following tag to the commit:
> Reported-by: syzbot+46f5c25af73eb8330eb6@syzkaller.appspotmail.com
> 
> divide error: 0000 [#1] PREEMPT SMP KASAN
> CPU: 1 PID: 3622 Comm: syz-executor.0 Not tainted 5.17.0-rc8-syzkaller #0
> Hardware name: Google Google Compute Engine/Google Compute Engine, BIOS Google 01/01/2011
> RIP: 0010:dbNextAG+0xfc/0x5f0 fs/jfs/jfs_dmap.c:602

Looks like malicious fs image with bmp->db_numag == 0.

#syz test:
git://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git master




With regards,
Pavel Skripkin
--------------0geXwsVQalqTa2xB0VGIHWeE
Content-Type: text/plain; charset=UTF-8; name="ph"
Content-Disposition: attachment; filename="ph"
Content-Transfer-Encoding: base64

ZGlmZiAtLWdpdCBhL2ZzL2pmcy9qZnNfZG1hcC5jIGIvZnMvamZzL2pmc19kbWFwLmMKaW5k
ZXggOTFmNGVjOTNkYWIxLi42MzNhOWFmZjA4NjggMTAwNjQ0Ci0tLSBhL2ZzL2pmcy9qZnNf
ZG1hcC5jCisrKyBiL2ZzL2pmcy9qZnNfZG1hcC5jCkBAIC0xNDgsNiArMTQ4LDcgQEAgc3Rh
dGljIGNvbnN0IHM4IGJ1ZHRhYlsyNTZdID0gewogICoJMAktIHN1Y2Nlc3MKICAqCS1FTk9N
RU0JLSBpbnN1ZmZpY2llbnQgbWVtb3J5CiAgKgktRUlPCS0gaS9vIGVycm9yCisgKgktRUlO
VkFMIC0gd3JvbmcgYm1hcCBkYXRhCiAgKi8KIGludCBkYk1vdW50KHN0cnVjdCBpbm9kZSAq
aXBibWFwKQogewpAQCAtMTc5LDYgKzE4MCw5IEBAIGludCBkYk1vdW50KHN0cnVjdCBpbm9k
ZSAqaXBibWFwKQogCWJtcC0+ZGJfbmZyZWUgPSBsZTY0X3RvX2NwdShkYm1wX2xlLT5kbl9u
ZnJlZSk7CiAJYm1wLT5kYl9sMm5icGVycGFnZSA9IGxlMzJfdG9fY3B1KGRibXBfbGUtPmRu
X2wybmJwZXJwYWdlKTsKIAlibXAtPmRiX251bWFnID0gbGUzMl90b19jcHUoZGJtcF9sZS0+
ZG5fbnVtYWcpOworCWlmICghYm1wLT5kYl9udW1hZykKKwkJcmV0dXJuIC1FSU5WQUw7CisK
IAlibXAtPmRiX21heGxldmVsID0gbGUzMl90b19jcHUoZGJtcF9sZS0+ZG5fbWF4bGV2ZWwp
OwogCWJtcC0+ZGJfbWF4YWcgPSBsZTMyX3RvX2NwdShkYm1wX2xlLT5kbl9tYXhhZyk7CiAJ
Ym1wLT5kYl9hZ3ByZWYgPSBsZTMyX3RvX2NwdShkYm1wX2xlLT5kbl9hZ3ByZWYpOwo=

--------------0geXwsVQalqTa2xB0VGIHWeE
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline


--------------0geXwsVQalqTa2xB0VGIHWeE
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion

--------------0geXwsVQalqTa2xB0VGIHWeE--

