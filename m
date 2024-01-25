Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id D483D83C8B0
	for <lists+jfs-discussion@lfdr.de>; Thu, 25 Jan 2024 17:52:13 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1rT2xJ-0004k6-MO;
	Thu, 25 Jan 2024 16:51:58 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <axboe@kernel.dk>) id 1rT2xH-0004jq-VS
 for jfs-discussion@lists.sourceforge.net;
 Thu, 25 Jan 2024 16:51:56 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 From:References:Cc:To:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=gzhzH8W8YKdG1UshrLmsWOmbS+mnnML0ID8FiPyQS+8=; b=Ka8+pl5wh32FRVCyGt7p0MpUbu
 1zDOzlPdbca4j+ukCVr7hsIgQAMyiNDY47sKh3gYNtsDP7Yq75DHU6pGdygwsW/7mN5nX0L9cv4WP
 WMfYPDdGeMOOxl8+xRKlA0Tm/jpPjZmX94drHclRAjknNK9XlSKzyvFdahVXExG3hURA=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:References:Cc:To:
 Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=gzhzH8W8YKdG1UshrLmsWOmbS+mnnML0ID8FiPyQS+8=; b=U+t6MF6gVp+C8nYt5GJQi+LJUV
 LBY32EKJs4OsO4bz5fwICf8AixGjpP8X8zDVEmOHnT7cIdzlQ9yFLMIGMpPS3Y5V6PXEAL4ITRn6J
 RvGvSxRUO3N7a2RJpa3Jqe+QwBvcNveWmpt0ZrljV2HCsAfpkD/IrYAUZn8aDJTZF4Y0=;
Received: from mail-io1-f53.google.com ([209.85.166.53])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1rT2xG-0005uJ-1E for jfs-discussion@lists.sourceforge.net;
 Thu, 25 Jan 2024 16:51:56 +0000
Received: by mail-io1-f53.google.com with SMTP id
 ca18e2360f4ac-7bf3283c18dso88093939f.0
 for <jfs-discussion@lists.sourceforge.net>;
 Thu, 25 Jan 2024 08:51:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=kernel-dk.20230601.gappssmtp.com; s=20230601; t=1706201504; x=1706806304;
 darn=lists.sourceforge.net; 
 h=content-transfer-encoding:in-reply-to:from:references:cc:to
 :content-language:subject:user-agent:mime-version:date:message-id
 :from:to:cc:subject:date:message-id:reply-to;
 bh=gzhzH8W8YKdG1UshrLmsWOmbS+mnnML0ID8FiPyQS+8=;
 b=c9tpEmhPAGT3RT6DAtdSUtlDl52rqHRbL1WiJpjVbjzZD2walWAUZz7ArZK7PbNBtU
 iEdL2hg6nVgx3kKXjrxnLE1PtoI2AyAhOlLEwjnDoamPDA6fhyejwQaiHrzx9xNIDCTB
 2+39tB2x1Psd2p9vrxAiTowp1AnUBzp+aiZbdfXijotwW8HTy3NhKthIAm16cy5Cm91i
 N+z4E7f2dAZkkW8/dNkAKV6FRToeFficmQOGDqs65VIGFvrrITLI6fz3vYo7f+MCIoGx
 qOn/hyPLznsLRgj0WSQxiVQIX4zLPWDAl3cNtqok89gNiAXIaIOtKA9a38cATcjUAkJH
 JqmQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1706201504; x=1706806304;
 h=content-transfer-encoding:in-reply-to:from:references:cc:to
 :content-language:subject:user-agent:mime-version:date:message-id
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=gzhzH8W8YKdG1UshrLmsWOmbS+mnnML0ID8FiPyQS+8=;
 b=rBWDhKoase7wUUekQ0Ipqh6M80NGTW+HJ5x0umY+k9sEff/U+Xd6b3q6mbpQSD0Vpn
 h+2E0YrkS+IGqjYOTFNlCeNLTXuBGrCKiXN5kJM6inh5UulK2Occpni1EIc69/sf0uae
 dk05fU8sG2DSxf5iE+S2crPdoWrxS6qCHZk7pYSnD1LoaURgixSTKgcYDPmW0Tmip/8R
 WcZRIg7sDp04sLixYqUDG6kF/1h3K3vjuX0OLbYM0x9i77vDOwMpRzOKN91V6sBve3Cu
 qScfPASn49iVcH4a3aOeKnUDup98I7IdR1ZnxBmJq16f2R4SVPAiQc/M9EIlCaXp95AH
 eACg==
X-Gm-Message-State: AOJu0Yw9UlqL//aVYQOCLgNjpXJdo29SzDiyhWJ4J7wbH0r6TGiw4usQ
 zRaHutD35Y42fn/16tYBdgxKRsQYkDX3767ZWZd3qI6lPrPAschW2DId8MT0wX4=
X-Google-Smtp-Source: AGHT+IFYyrX06cAtSMCgkVu4jH5S0PUJ1onbfIiXVVqaFfJSd2PAAPJR6d43ujLUGSWzHqTxQglpEw==
X-Received: by 2002:a05:6e02:1b04:b0:35f:fa79:644 with SMTP id
 i4-20020a056e021b0400b0035ffa790644mr2670864ilv.3.1706201504039; 
 Thu, 25 Jan 2024 08:51:44 -0800 (PST)
Received: from [192.168.1.116] ([96.43.243.2])
 by smtp.gmail.com with ESMTPSA id
 v22-20020a05663812d600b0046ed5f51becsm605331jas.39.2024.01.25.08.51.43
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 25 Jan 2024 08:51:43 -0800 (PST)
Message-ID: <e0a1fcc8-40ce-4c96-bba5-95a9641cb076@kernel.dk>
Date: Thu, 25 Jan 2024 09:51:43 -0700
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: Christian Brauner <brauner@kernel.org>
References: <00000000000083513f060340d472@google.com>
 <000000000000e5e71a060fc3e747@google.com>
 <20240125-legten-zugleich-21a988d80b45@brauner>
 <11868eb4-0528-4298-b8bc-2621fd1aac83@kernel.dk>
 <20240125-addition-audienz-c955ab3c8435@brauner>
From: Jens Axboe <axboe@kernel.dk>
In-Reply-To: <20240125-addition-audienz-c955ab3c8435@brauner>
X-Spam-Score: 2.5 (++)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On 1/25/24 9:47 AM, Christian Brauner wrote: > On Thu, Jan
 25, 2024 at 09:11:34AM -0700, Jens Axboe wrote: >> On Thu, Jan 25, 2024 at
 9:08?AM Christian Brauner <brauner@kernel.org> wrote: >>> >>> On T [...] 
 Content analysis details:   (2.5 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.53 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.53 listed in wl.mailspike.net]
 2.5 SORTED_RECIPS          Recipient list is sorted by address
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1rT2xG-0005uJ-1E
Subject: Re: [Jfs-discussion] [syzbot] [jfs?] INFO: task hung in path_mount
 (2)
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
Cc: shaggy@kernel.org, hdanton@sina.com, jack@suse.cz,
 syzkaller-bugs@googlegroups.com,
 syzbot <syzbot+fb337a5ea8454f5f1e3f@syzkaller.appspotmail.com>,
 linux-kernel@vger.kernel.org, linux-fsdevel@vger.kernel.org,
 jfs-discussion@lists.sourceforge.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

On 1/25/24 9:47 AM, Christian Brauner wrote:
> On Thu, Jan 25, 2024 at 09:11:34AM -0700, Jens Axboe wrote:
>> On Thu, Jan 25, 2024 at 9:08?AM Christian Brauner <brauner@kernel.org> wrote:
>>>
>>> On Thu, Jan 25, 2024 at 03:59:03AM -0800, syzbot wrote:
>>>> syzbot suspects this issue was fixed by commit:
>>>>
>>>> commit 6f861765464f43a71462d52026fbddfc858239a5
>>>> Author: Jan Kara <jack@suse.cz>
>>>> Date:   Wed Nov 1 17:43:10 2023 +0000
>>>>
>>>>     fs: Block writes to mounted block devices
>>>>
>>>> bisection log:  https://syzkaller.appspot.com/x/bisect.txt?x=13175a53e80000
>>>> start commit:   2ccdd1b13c59 Linux 6.5-rc6
>>>> git tree:       upstream
>>>> kernel config:  https://syzkaller.appspot.com/x/.config?x=9c37cc0e4fcc5f8d
>>>> dashboard link: https://syzkaller.appspot.com/bug?extid=fb337a5ea8454f5f1e3f
>>>> syz repro:      https://syzkaller.appspot.com/x/repro.syz?x=17ba5d53a80000
>>>> C reproducer:   https://syzkaller.appspot.com/x/repro.c?x=14265373a80000
>>>>
>>>> If the result looks correct, please mark the issue as fixed by replying with:
>>>
>>> #syz fix: fs: Block writes to mounted block devices
>>
>> Like Dave replied a few days ago, I'm kind of skeptical on all of these
>> bugs being closed by this change. I'm guessing that they are all
>> resolved now because a) the block writes while mounted option was set to
>> Y, and b) the actual bug is just masked by that.
>>
>> Maybe this is fine, but it does seem a bit... sketchy? The bugs aren't
>> really fixed, and what happens if someone doesn't turn on that option?
>> If it's required, perhaps it should not be an option at all? Though
>> that'd seem to be likely to break some funky use cases, whether they are
>> valid or not.
> 
> We have no way of actually testing or verifying this stuff and a lot of
> these have been around for a long time. For example, this report here
> has a C reproducer but following the actual dashboard link that
> reproducer is striked-through which supposedly means that it isn't valid
> or reliable. And no other reproducer ever showed up.
> 
> As far as I can see we should just close reports such as. If this is a
> real bug that is separate from the ability to mount to writed block
> devices then one should hope that syzbot finds another reproducer that
> let's us really analyze the bug?
> 
> A separate issue is that syzbot keeps suggesting as all of these being
> closable because of this. So how serious can we take this and how much
> time can/should we spend given that we got ~20 or more of these mails in
> the last two weeks or so.
> 
> I have no better answers than this tbh. And fwiw, apart from this one I
> haven't closed a single bug based on this.

Oh yeah, it wasn't directed at you specifically, just the overall class
of bugs that get closed due to this in general.

> And yes, ideally the ability to write to mounted block devices should be
> turned off. But we'll have to let it trickle into the individual
> distributions first and make remaining userspace tools that rely on this
> move to alternate apis before we can make any serious effort.

Hopefully it's all fine on the distro front and we can just make it the
default some years from now. May even make sense to backport some of
this to stable and get it in their hands faster?

-- 
Jens Axboe



_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
