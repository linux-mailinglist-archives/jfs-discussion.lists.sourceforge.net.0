Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id DA21B7B9ADE
	for <lists+jfs-discussion@lfdr.de>; Thu,  5 Oct 2023 07:16:24 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1qoGiU-0005d4-T7;
	Thu, 05 Oct 2023 05:16:05 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <ghandatmanas@gmail.com>) id 1qoGiT-0005cx-KQ
 for jfs-discussion@lists.sourceforge.net;
 Thu, 05 Oct 2023 05:16:04 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 From:References:Cc:To:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=H9nT5tLRN5qqmtXX+vtQZ11JSBruGv0fxOyk+moMln8=; b=FMbHVwtNCPic5hM04k9RuLdMv8
 Hn3OzyAb90vHETYidH/4hVeyxWIyP763s8KihOMqBMMJnxgOUYsgw+Xkcf+B4U3i7H0pOJKi2M6vb
 IavOKyjhDVQd6UwHSVoGXT5PLJiccgeQwJ9tPA/y+6q/E1LwnzsOAyI5WqHbxhOkNmu4=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:References:Cc:To:
 Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=H9nT5tLRN5qqmtXX+vtQZ11JSBruGv0fxOyk+moMln8=; b=jg+Dkvf5nkY27IEb3NoUxU61Mh
 A2IP2FEuYn+cxsO5HqythYmXPcS+niY4W2RmdBsfjRKH4DGoDxYjVjocEl5XQ3bZySd2wLOg2zGoR
 ZiAp845CIQ/oYQpwEgJyivL4SI5K0QiZeZxf4nP6Yz+XeBGXdLCidZCvlcHT3IVLkkPE=;
Received: from mail-pl1-f178.google.com ([209.85.214.178])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1qoGiN-0026Ux-WB for jfs-discussion@lists.sourceforge.net;
 Thu, 05 Oct 2023 05:16:04 +0000
Received: by mail-pl1-f178.google.com with SMTP id
 d9443c01a7336-1c61bde0b4bso4367385ad.3
 for <jfs-discussion@lists.sourceforge.net>;
 Wed, 04 Oct 2023 22:15:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1696482954; x=1697087754; darn=lists.sourceforge.net;
 h=content-transfer-encoding:in-reply-to:from:references:cc:to
 :content-language:subject:user-agent:mime-version:date:message-id
 :from:to:cc:subject:date:message-id:reply-to;
 bh=H9nT5tLRN5qqmtXX+vtQZ11JSBruGv0fxOyk+moMln8=;
 b=Yx5+D/NKg6QdBdPftAoWU0pr74hFWx4jnComGg877KXYo8AZxivCF5Ub7c34SR5Lui
 uZThlNVA7fTJJ4sE3eT7veV764P85Xjr+YP8pNxliHVtjkXLks/1hQlB/WYDnsbw/9VF
 XryAhIAZeyClJd8G2t8dfAq1AXOe5V/eMVE1WKYQnab9TdfFf/nOFz8piBvqD9cu3eFT
 feD3FKCJe8nVpS9fl3RkTQod+OJvlKJX6KeODqJp2ra8ZgahwrzBDzYutlomZSejiEKk
 1Au+BZn9QoHU7+Td1m7yX6Wbeco99fXCqKp05TpgcvMPfODDdlUsfWWCxj6FiGRKXwPu
 ux6g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1696482954; x=1697087754;
 h=content-transfer-encoding:in-reply-to:from:references:cc:to
 :content-language:subject:user-agent:mime-version:date:message-id
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=H9nT5tLRN5qqmtXX+vtQZ11JSBruGv0fxOyk+moMln8=;
 b=CZ95ivnTyzJgAqrKVYdTdRVdN1OIh8J/UoByByEv5Gsv8gffqEmbSbwWnDejAfrUt/
 RODXDWCIHsGqgu9FKRwWQFa0A7EZ856fUjA4IqOKwrempZeT3WKCUQTcfpcqdZn5Etov
 ZAA92RTrNoRg2SGjMSrwskoZnaroIN3juX/oiNX8ctUdmxrX1lJMldrVQ+VBL4J0pSoe
 FlBQsjAD8WKL0orLtFNra9wtgvHNzzSkvNkZExas6bi+lEWyiF0nx1suh020NukdLk6u
 g/mupWEk74sMOl9l7Eh0C2ak+TUM/5wnA07rzF3KDVu1JP82KX60u+7K+KaNRH9r2buB
 76tw==
X-Gm-Message-State: AOJu0YwTXky1duJTcyaMdLWBbg8dXCOEZj7cIyYnyXjB0fdY5il1y2PN
 0U73RO3AvTRg5czssyN5IZcI66VNbZ5vW+sR
X-Google-Smtp-Source: AGHT+IG0E0MClgQEMPm1p4gW05l/cLgh45hB65zPuXG48f5XxjBjvLGQ87pk67e720CBKvIJ65j8ZQ==
X-Received: by 2002:a17:903:2445:b0:1c7:4ab6:b3cc with SMTP id
 l5-20020a170903244500b001c74ab6b3ccmr5233304pls.54.1696482954260; 
 Wed, 04 Oct 2023 22:15:54 -0700 (PDT)
Received: from [10.0.2.15] ([103.37.201.179]) by smtp.gmail.com with ESMTPSA id
 h10-20020a170902f7ca00b001bc445e249asm533587plw.124.2023.10.04.22.15.51
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 04 Oct 2023 22:15:53 -0700 (PDT)
Message-ID: <3d4e0f62-35bb-4b18-a64c-191c88415032@gmail.com>
Date: Thu, 5 Oct 2023 10:45:49 +0530
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: Dave Kleikamp <dave.kleikamp@oracle.com>, shaggy@kernel.org
References: <20230919155542.4354-1-ghandatmanas@gmail.com>
 <423182d1-3d75-4a73-9011-da24658a40cc@oracle.com>
In-Reply-To: <423182d1-3d75-4a73-9011-da24658a40cc@oracle.com>
X-Spam-Score: 1.0 (+)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On 04/10/23 00:46, Dave Kleikamp wrote: > The size of the
 xad array can be either XTROOTMAXSLOT or XTPAGEMAXSLOT > depending on whether
 it is the root, imbedded in the inode, or not. It > is currently [...] 
 Content analysis details:   (1.0 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 1.2 RCVD_IN_BL_SPAMCOP_NET RBL: Received via a relay in
 bl.spamcop.net
 [Blocked - see <https://www.spamcop.net/bl.shtml?103.37.201.179>]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [ghandatmanas[at]gmail.com]
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.214.178 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.214.178 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1qoGiN-0026Ux-WB
Subject: Re: [Jfs-discussion] [PATCH] jfs : fs array-index-out-of-bounds in
 txCommit
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
From: Manas Ghandat via Jfs-discussion <jfs-discussion@lists.sourceforge.net>
Reply-To: Manas Ghandat <ghandatmanas@gmail.com>
Cc: syzbot+0558d19c373e44da3c18@syzkaller.appspotmail.com,
 jfs-discussion@lists.sourceforge.net,
 Linux-kernel-mentees@lists.linuxfoundation.org, linux-kernel@vger.kernel.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

On 04/10/23 00:46, Dave Kleikamp wrote:
> The size of the xad array can be either XTROOTMAXSLOT or XTPAGEMAXSLOT 
> depending on whether it is the root, imbedded in the inode, or not. It 
> is currently declared with the smaller value so we can use xtpage_t 
> within the inode.
>
> I had promised to address this, but haven't gotten to it yet. I'll try 
> to carve out some time to do that.
>
> Thanks,
> Shaggy

Can you guide with the workflow of how things should be done. I can try 
to work on it and resolve the issue.



_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
